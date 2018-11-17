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
    <!-- <?php the_archive_title('<h2 class="title_font">', '</h2>'); ?> -->

    <h2> <?php $terms = get_the_terms(get_the_ID(), 'brand')[0];
         echo $terms->name; ?> </h2>

    <div id="taxonomy_wrapper">
        <?php 
         $taxonomy_list = new wp_query(
            array(
               'post_type' => 'motor',
               'posts_per_page' => -1,
               'tax_query' => array(
                  array(
                     'taxonomy' => 'brand',
                     'field' => 'slug',
                     'terms' => $terms->slug,
                  )
               ),
            )
         ); ?>
         <ul class="list">
         <?php while ($taxonomy_list->have_posts()) :
            $taxonomy_list->the_post(); 
            if( !get_field('condition') ):?>
             <li class=" col-lg-4 col-md-6 col-xs-12">
                        <?php get_template_part('template-parts/post/content', get_post_taxonomies()[0]); ?>
                    </li>
        <?php  endif;
        endwhile;
         wp_reset_postdata(); ?>
         </ul>
         <ul class="pagination"></ul>
    </div>
</div>
<?php get_footer();