<?php
/*
Plugin Name: Un plugin de création d'enquete
Plugin URI: https://cant-not-tweet-this.com/
Description: Ceci est un plugin qui gere la carte
Author: Amphoux Gabriel
Version: 0.1
Author URI: pas encore
*/
class creationEnquete{
	public function __construct(){


		add_action('admin_menu', array($this,'simple_action'));
	}
	public function simple_action() {
   add_menu_page('creationEnquete', 'creationEnquete', 'manage_options', 'creationEnquete', array($this, 'creationEnquete'), 'dashicons-admin-comments', 4);
}
public function creationEnquete() {
   /*if (!current_user_can('manage_options')) {
        wp_die(__('Vous n\'avez pas les droits pour accéder à cette page.'));
    }*/

    include(sprintf("%s/tout.php", dirname(__FILE__)));
		//include(sprintf("%s/ajoutTab.ajax.php", dirname(__FILE__)));
		

}

}
new creationEnquete();
