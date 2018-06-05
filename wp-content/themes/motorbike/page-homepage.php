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
		<div class="wrap">
			<h2 class="title_font">NEW ARRIVALS</h2>

			<div id="new_arrivals_wrapper">
				<?php
					$new_arrivals = get_field('new_arrivals');

					if($new_arrivals):
						foreach($new_arrivals as $post): 
							setup_postdata($post); ?>

							<div class="col-lg-3 col-md-6 col-xs-12">
								<?php get_template_part( 'template-parts/post/content', get_post_taxonomies()[0]); ?>
							</div>
				<?php
					endforeach;
					wp_reset_postdata();
					endif; ?>
			</div>
		</div>
	</main><!-- #main -->
</div><!-- #primary -->

<?php
// get_sidebar();
get_footer(); ?>