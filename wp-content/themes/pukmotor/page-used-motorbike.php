<?php
/**
 * Template Name: Used Motorbike Page
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

get_header();  ?>

<div class="wrap">
    <?php $args = array(
    	'post_type' => 'motor',
    	'posts_per_page' => -1
    ); 
    	$used_motorbike = new wp_query( $args );
    ?>
    <div class="content_page_title_wrap">
        <h2 class="title_font title_font_family">Used Motorbike</h2>
    </div>
    
    <div id="taxonomy_wrapper">
        <?php if( $used_motorbike -> have_posts()): ?>
            <ul class="list">
                <?php while( $used_motorbike -> have_posts()): 
                	$used_motorbike -> the_post(); 
                	
                    if( get_field('condition') ):?>

                    <li class=" col-lg-3 col-md-6 col-xs-12">
                        <?php get_template_part( 'template-parts/post/content', get_post_taxonomies()[0]); ?>
                    </li>
                <?php 
                    endif;
                endwhile;
                wp_reset_postdata(); ?>
            </ul>
            <ul class="pagination"></ul>
        <?php endif;?>
    </div>
</div>

<?php
get_footer(); ?>