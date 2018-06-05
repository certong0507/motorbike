

<div class="single_brand_motor">
    <a href="<?php the_permalink(); ?>">
        <div style="display: inline-block;">
            <div class="overlay"></div>
        
            <?php if(get_field('sales')): ?>
                <img class="sales_tag" src="<?php echo get_template_directory_uri(); ?>/assets/images/sale-tag-top.png">
            <?php endif; ?>

            <div class="single_brand_motor_image_wrapper">
            	<?php the_post_thumbnail() ?>
            </div>

            <?php if(get_field('condition')): ?>
                <h4><strong><?php  echo get_the_terms( get_the_ID(), 'brand')[0] -> name; ?></strong></h4>
            <?php endif; ?>
            
            <h3><strong><?php the_title(); ?></strong></h3>
            
            <?php if(get_field('sales')): ?>
				<h4>RM <?php echo get_field('promotion_price'); ?></h4>
				<h4 class="text_crossed">RM <?php echo get_field('price'); ?></h4>
            <?php else: ?> 
				<h4>RM <?php echo get_field('price'); ?></h4>
            <?php endif; ?>

            <div class="custom_button custom_button_view_details"></div>
        </div>
    </a>
</div>
