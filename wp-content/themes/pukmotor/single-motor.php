<?php

/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

get_header();

$gallery = get_field('gallery'); ?>
    <div class="wrap">
        <div class="row">
            <div class="gallery_wrapper col-lg-6 col-md-6 col-sm-12"> 
                <h2><?php the_title(); ?></h2>
                <?php if ($gallery) : ?>
                    <ul id="lightSlider">
                        <?php foreach ($gallery as $image) : ?>
                            <li data-thumb="<?php echo wp_get_attachment_image_url($image['ID'], 'full') ?>">
                                <?php echo wp_get_attachment_image($image['ID'], 'full'); ?>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                <?php endif; ?>
            </div>

            <div class="motor_description_content col-lg-6 col-md-6 col-sm-12">
                <div class="motor_details">
                
                    <?php if (get_field('sales')) : ?>
                        <h3>RM <?php echo get_field('promotion_price'); ?></h3>
                        <h3 class="text_crossed">RM <?php echo get_field('price'); ?></h3>
                    <?php else : ?> 
                        <h3>RM <?php echo get_field('price'); ?></h3>
                    <?php endif; ?>

                    <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
                        <?php the_content(); ?>
                    <?php endwhile;
                    endif; ?>

                </div>

                <div>
                    <?php 
                        function calculateDepositPrice($price, $deposit) {
                            return round(($price * $deposit) / 100);
                        }            

                        function calculateMonthlyPayment($price, $rate, $depositPrice, $month) {
                            $priceAfterDeposit = $price - $depositPrice;
                            $interestRateByYear = ($rate * $month) / 100;
                            return round((($priceAfterDeposit * $interestRateByYear) + $priceAfterDeposit) / $month);
                        }
                    ?>

                    <?php while (have_rows('plans')) : the_row();
                        $title = get_sub_field('title');
                        $deposit = get_sub_field('deposit');
                        $rate = get_sub_field('rate'); 
                        $maxYear = get_sub_field('maxyear');
                        $price = get_field('price');               

                        $depositPrice = calculateDepositPrice($price, $deposit);
                        $monthlyPaymentPrice = 0;
                        $month = 0;
                    ?>
                        <div class="accordion" id="<?php echo $title; ?>"><?php echo $title; ?></div>
                        <div class="accordion_content">
                            <!-- Plan's content: -->
                           Deposit <?php echo $deposit; ?>%
                           (<?php echo $rate; ?>% Per Month)                  
                           <div>Deposit Price RM <?php echo $depositPrice; ?></div>
                           <?php
                                for ($i = 2; $i <= $maxYear; $i++) {
                                    $month = $i * 12;
                                    $monthlyPaymentPrice = calculateMonthlyPayment($price, $rate, $depositPrice, $month);
                                    echo "<div>RM " . $monthlyPaymentPrice . " X " . $month . " months (" . $i . "years)</div>";
                                }                           
                           ?>

                        </div>
                    <?php endwhile; ?>
                </div>

                <?php $brand = get_the_terms(get_the_ID(), get_post_taxonomies()[0]); ?>

                <a href="<?php echo get_term_link($brand[0]->slug, $brand[0]->taxonomy) ?>">
                    <div class="custom_button">Back</div>
                </a>
                
                <a href="<?php bloginfo('url'); ?>/apply-loan/?motorModel=<?php the_title(); ?> ">
                    <div class="custom_button">Apply Loan</div>
                </a>
            </div>
        </div>
        </br>
        <h2>Description</h2>
        <div> 
            <?php the_field('description'); ?>
        </div>
    </div>
<?php get_footer(); ?>