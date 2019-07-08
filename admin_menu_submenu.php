<?php

add_action('admin_menu', 'my_menu_pages');
function my_menu_pages(){

	//add_menu_page( string $page_title, string $menu_title, string $capability, string $menu_slug, callable $function = '', string $icon_url = '', int $position = null )

    add_menu_page('My Page Title', 'My Menu Title', 'manage_options', 'my-menu', 'my_menu_output' );
    add_submenu_page('my-menu', 'Submenu Page Title', 'Whatever You Want', 'manage_options', 'my-menu' );
    //add_submenu_page('my-menu', 'Submenu Page Title2', 'Whatever You Want2', 'manage_options', 'my_menu2' );

    //add_submenu_page( string $parent_slug, string $page_title, string $menu_title, string $capability, string $menu_slug, callable $function = '' )
    add_submenu_page( 'my-menu', 'Submenu Page Title2', 'Submenu Menu Title2', 'manage_options', 'my_menu2', 'my_menu2' );
}

function my_menu_output()
{
	echo "Submenu Page Title";
}

function my_menu2()
{
	echo "Submenu Page Title2";
}


function test()
{
	add_menu_page( $page_title, $menu_title, $capability, $menu_slug, callable $function = '', $icon_url = '', int $position = null )

	add_menu_page( __('Easy Student Results'), __('Student Results'), $this->role, PLUGIN_SLUG, array($this,'department'),'dashicons-book-alt' );

	add_submenu_page(RPS_Result_Management::PLUGIN_SLUG, __('Easy Student Results', $this->TD) . ' - ' . __("Department", $this->TD), __("Department", $this->TD), $this->role, RPS_Result_Management::PLUGIN_SLUG, array($this,'department'));
}