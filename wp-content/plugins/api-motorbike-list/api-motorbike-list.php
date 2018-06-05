<?php
/**
 * Plugin Name:       (API)-Motorbike-List
 * Plugin URI:        http://google.com/
 * Description:       Plugin to add custom features to listingpro theme
 * Version:           1.0
 * Author:            Me
 * Author URI:        http://google.com/
 */

 // handler for the hook
 function motorbike_listing_func( $data ) {
   
   $args = array(
      'post_type' => 'motor',
   );

   $posts = new WP_Query($args);

   if ( $posts -> have_posts() ) {
      $data = array();

      while($posts->have_posts()) : $posts->the_post();
        $post = get_post();
        $fields = get_fields();
        
        $featured_img = array('featured_image_url' => str_replace('localhost', getHostByName(getHostName()), get_the_post_thumbnail_url(get_the_ID(),'full')));
        $brand = array('brand' => get_the_terms(get_the_ID(), 'brand'));

        $array_merge = array_merge((array)$post, (array)$fields, (array)$featured_img, (array)$brand);

        array_push($data, $array_merge);
      endwhile;

      return $data;
      
   } else {

     return null;
   }
  
 }

 // wordpress hook of type action
 add_action( 'rest_api_init', function () {
   register_rest_route( 'api', '/motorbike-list', array(
     'methods' => 'GET',
     'callback' => 'motorbike_listing_func',
   ) );
 } );