
<?php
// To show dropdown for custom taxonomy instead of multiple-check box.

function custom_meta_box() {

    remove_meta_box( 'branddiv', 'motor', 'side' );

    add_meta_box( 'tagsdiv-brand', 'Brands', 'brand_meta_box', 'motor', 'side' );

}
add_action('add_meta_boxes', 'custom_meta_box');

/* Prints the taxonomy box content */
function brand_meta_box($post) {

    $brand = 'brand';
    $taxonomy = get_taxonomy($brand);
?>
<div class="tagsdiv" id="<?php echo $brand; ?>">
    <div class="jaxtag">
    <p class="howto">Select motor brand.</p>
    <?php 
    // Use nonce for verification
    wp_nonce_field( plugin_basename( __FILE__ ), 'brand_noncename' );
    $type_IDs = wp_get_object_terms( $post->ID, 'brand', array('fields' => 'ids') );
    wp_dropdown_categories('taxonomy=brand&hide_empty=0&orderby=name&name=brand&show_option_none=Select type&selected='.$type_IDs[0]); ?>
    </div>
</div>
<?php
}

/* When the post is saved, saves our custom taxonomy */
function brand_save_postdata( $post_id ) {
  // verify if this is an auto save routine. 
  // If it is our form has not been submitted, so we dont want to do anything
  if ( ( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) || wp_is_post_revision( $post_id ) ) 
      return;

  // verify this came from the our screen and with proper authorization,
  // because save_post can be triggered at other times

  if ( !wp_verify_nonce( $_POST['brand_noncename'], plugin_basename( __FILE__ ) ) )
      return;


  // Check permissions
  if ( 'motor' == $_POST['post_type'] ) 
  {
    if ( !current_user_can( 'edit_page', $post_id ) )
        return;
  }
  else
  {
    if ( !current_user_can( 'edit_post', $post_id ) )
        return;
  }

  // OK, we're authenticated: we need to find and save the data

  $type_ID = $_POST['brand'];

  $type = ( $type_ID > 0 ) ? get_term( $type_ID, 'brand' )->slug : NULL;

  wp_set_object_terms(  $post_id , $type, 'brand' );

}
/* Do something with the data entered */
add_action( 'save_post', 'brand_save_postdata' );
?>


<?php
// Custom var_dump() with highlighted text.

function custom_var_dump($data){
    highlight_string("<?php\n\$data =\n" . var_export($data, true) . ";\n?>");
}
?>