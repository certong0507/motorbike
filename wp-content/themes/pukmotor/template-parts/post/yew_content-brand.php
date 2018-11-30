
<div class="single_motor_wrap">
    <div class="single_motor">
        <a class="single_motor_link" href="<?php the_permalink(); ?>">
            <div class="single_motor_title_brand">

                <?php $term_object = get_the_terms(get_the_ID(), 'brand')[0];
                      $brand_logo_object = get_field('logo', 'brand'.'_'.$term_object->term_id); ?>

                <img src="<?php echo $brand_logo_object['url'] ?>" alt="">

                <h3 class="title_font_family"><?php the_title(); ?></h3>
        
                <div class="responsive_price">
                    <?php if (get_field('sales')) : ?>
                        <p>RM <?php echo number_format_i18n(get_field('promotion_price'), 2); ?></p>
                        <p class="text_crossed">RM <?php echo number_format_i18n(get_field('display_price'), 2); ?></p>
                    <?php else : ?> 
                        <p>RM <?php echo number_format_i18n(get_field('display_price'), 2); ?></p>
                    <?php endif; ?>
                </div>
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
            <a href="<?php the_permalink(); ?>">
                <h3 class="title_font_family"><?php the_title(); ?></h3>

                <?php if (get_field('sales')) : ?>
                    <p>RM <?php echo number_format_i18n(get_field('promotion_price'), 2); ?></p>
                    <p class="text_crossed">RM <?php echo number_format_i18n(get_field('display_price'), 2); ?></p>
                <?php else : ?> 
                    <p>RM <?php echo number_format_i18n(get_field('display_price'), 2); ?></p>
                <?php endif; ?>
            </a>
        </div>

    </div>

</div>
