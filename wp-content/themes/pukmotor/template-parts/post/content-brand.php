
<div class="single_motor_wrap">
    <div class="single_motor">
        <a class="single_motor_link" href="<?php the_permalink(); ?>">
            <div class="single_motor_title_brand">
                <h3 class="title_font_family"><?php the_title(); ?></h3>
            
                <?php 
                    $term_object = get_the_terms(get_the_ID(), 'brand')[0];
                    $brand_logo_object = get_field('logo', 'brand'.'_'.$term_object->term_id);
                ?>

                <img src="<?php echo $brand_logo_object['url'] ?>" alt="">
            </div>

            <div>
                <div class="overlay"></div>
            
                <?php if (get_field('sales')) : ?>
                    <img class="sales_tag" src="<?php echo get_template_directory_uri(); ?>/assets/images/sale-tag-top.png">
                <?php endif; ?>

                <div class="single_motor_image_wrapper">
                    <?php the_post_thumbnail() ?>
                </div>

                <?php if (get_field('condition')) : ?>
                    <h4><?php echo get_the_terms(get_the_ID(), 'brand')[0]->name; ?></h4>
                <?php endif; ?>
            </div>
        </a>
    </div>

    <div class="custom_button_wrap">
        <!-- <div class="custom_button custom_button_view_details hover_show"></div> -->

        <div class="hover_show">
            <?php if (get_field('sales')) : ?>
                <h3>RM <?php echo get_field('promotion_price'); ?></h3>
                <h3 class="text_crossed">RM <?php echo get_field('price'); ?></h3>
            <?php else : ?> 
                <h3>RM <?php echo get_field('price'); ?></h3>
            <?php endif; ?>
        </div>

    </div>

</div>
