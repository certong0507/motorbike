<?php
/**
 * Template Name: Home Page
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

get_header();  ?>

<div id="primary">
	<main id="main" class="site-main" role="main">
		<div class="wrap text_align_center">
			<h2 class="title_font title_font_family">NEW ARRIVALS</h2>

			<div id="new_arrivals_wrapper">
				<?php
					$new_arrivals = get_field('new_arrivals');

					if($new_arrivals):
						foreach($new_arrivals as $post): 
							setup_postdata($post); ?>

							<div class="row col-lg-6 col-md-6 col-xs-12">
								<?php get_template_part( 'template-parts/post/content', get_post_taxonomies()[0]); ?>
							</div>
				<?php
					endforeach;
					wp_reset_postdata();
					endif; ?>
			</div>

			<div class="brand_slideshow_wrap">
				<div class="brand_logo_slick">
					<?php 
						$terms = get_terms( 'brand', array('hide_empty' => false,) );
						
						foreach($terms as $term) {
							$term_detail = 'brand_'.$term->term_id;
							$logoObj =  get_field('logo', $term_detail);
						?>
							<a href="<?php echo get_term_link($term->slug, $term->taxonomy) ?>"><img src='<?php echo $logoObj['url']; ?>' /></a>
						<?php } ?>
				</div>
			</div>
		</div>
	</main><!-- #main -->
</div><!-- #primary -->

<?php
// get_sidebar();
get_footer(); ?>