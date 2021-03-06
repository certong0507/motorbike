<?php

/**
 * The template for displaying archive pages
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */
get_header();?>
<div class="wrap">
    <!-- <?php the_archive_title('<h2 class="title_font">', '</h2>');?> -->

    <div style="display: flex; justify-content: space-between;">
      <h2 class="title_font title_font_family">
         <?php $terms = get_the_terms(get_the_ID(), 'brand')[0];
echo $terms->name;?>
      </h2>

      <!-- <select id="sortBy_price">
         <option value="ASC">Sort by lowest price</option>
         <option value="DESC">Sort by highest price</option>
      </select> -->
    </div>

    <div id="taxonomy_wrapper">
    
    </div>
</div>
<?php get_footer();?>

<script>
jQuery(function($){

   var sortBy = 'DESC';
   var slug = '<?php echo $terms->slug; ?>'

   sortMotorList();

   $('#sortBy_price').change(function() {
      sortBy = this.value;

      sortMotorList();
   });

   function sortMotorList() {
      var ajaxurl = "<?php echo admin_url('admin-ajax.php'); ?>";
		var ajaxdata = { "action": "sortby" };

		if(sortBy) { $.extend(ajaxdata, { "sortBy" : sortBy }); }
      if(slug) { $.extend(ajaxdata, { "slug" : slug }); }

      jQuery.ajax({
	        type: 'POST',
	        url: ajaxurl,
	        data: ajaxdata,
	        success: function(response) {
	        	if(response) { $( "#taxonomy_wrapper" ).html(response); }
	        	return false;
	        }
	    });
   }
})
</script>
