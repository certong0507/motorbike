<ul id="motor_list" class="list">
        <?php while ($query->have_posts()):
    $query->the_post();
    if (!get_field('condition')): ?>
        <li class=" col-lg-3 col-md-6 col-xs-12">
            <?php get_template_part('template-parts/post/content', get_post_taxonomies()[0]);?>
            </li>
    <?php endif;
    endwhile;
wp_reset_postdata();?>
</ul>
<ul class="pagination"></ul>