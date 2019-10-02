<?php

namespace App\Http\Middleware;

use DB;
use App\PrivilegeMenu;
use Closure;

class CheckPrivilege
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {      
        $uri           = $request->route()->uri;
        $method        = $request->route()->methods[0];
        $method_end    = !empty($request->route()->methods[1]) ? $request->route()->methods[1] :'';
        $route_name    = !empty($request->route()->action['as']) ? $request->route()->action['as'] :'';
        $user_role_id  = auth()->user()->user_role_id;

        $where_condition = ['user_role_privilege_menu.user_role_id' => $user_role_id, 'privilege_menus.uri' => $uri,'privilege_menus.route_name' => $route_name];

        $privilege_record = DB::table('privilege_menus')
            ->join('user_role_privilege_menu', 'privilege_menus.id', '=', 'user_role_privilege_menu.privilege_menu_id')
            ->where($where_condition)
            ->select('privilege_menus.*', 'user_role_privilege_menu.*')
            ->get();    
        //pr($privilege_record);

        if( !empty($privilege_record[0]) ) {
            return $next($request);
        } else {
            //echo "You do not have permission to see this";
            return redirect('/');
        }
        //pr(auth()->user());
        //pr($uri);
        //pr($method);
        //pr($method_end);
        //pr($route_name);
        //dd($request->route());
        //return $next($request);

        /*if( auth()->user()->isAdmin == 1 ) {
            return $next($request);
        }
        return redirect('home')->with('error','You have not admin access');*/
    }
}
