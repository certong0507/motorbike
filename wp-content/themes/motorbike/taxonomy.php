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

get_header(); ?>
<div class="wrap">
    <?php the_archive_title( '<h2 class="title_font">', '</h2>' ); ?>

    <div id="taxonomy_wrapper">
        <?php if(have_posts()): ?>
            <ul class="list">
                <?php while(have_posts()): the_post(); 

                    if( !get_field('condition') ):?>

                    <li class="col-lg-3 col-md-6 col-xs-12">
                        <?php get_template_part( 'template-parts/post/content', get_post_taxonomies()[0]); ?>
                    </li>
                <?php 
                    endif;
                endwhile;?>
            </ul>
            <ul class="pagination"></ul>
        <?php endif;?>
    </div>
</div>
<?php get_footer();