<?php
/**
 * Template name:Front page
 *
 */

get_header();
?>


<section class="banner_area" style="background-image: url(<?php the_field('banner'); ?>);">
  <div class="container">
    <div class="row no-gutters pt-5">
      <div class="col-sm-12 col-lg-5 wrapper-banner1  mr-2 mt-2" style="background-image: url(<?php the_field('banner1'); ?>);">
        <h2 class="banner-title pt-5">Barista Assecories</h2>
        <h4 class="sub-banner-title">Barista Shop</h4>
           <a href="<?php echo get_permalink( wc_get_page_id( 'shop' ) ); ?>"><button class="banner-button">Store Online</button></a>
      </div>
      <div class="col-sm-6 col-lg-3 wrapper-banner2 mr-2 mt-2"  style="background-image: url(<?php the_field('banner2'); ?>);">
        <h2 class="banner-title pt-5">Barista Assecories</h2>
        <h4 class="sub-banner-title">Barista Shop</h4>
           <a href="<?php echo get_permalink( wc_get_page_id( 'shop' ) ); ?>"><button class="banner-button">Store Online</button></a>
      </div>
      <div class="col-sm-6 col-lg-3">
        <div class="row no-gutters">
          <div class="col-lg-12 wrapper-banner3 mt-2"  style="background-image: url(<?php the_field('banner3'); ?>);">
            <h2 class="banner-title pt-5">Barista Assecories</h2>
            <h4 class="sub-banner-title">Barista Shop</h4>
           <a href="<?php echo get_permalink( wc_get_page_id( 'shop' ) ); ?>"><button class="banner-button">Store Online</button></a>
          </div>
          <div class="col-lg-12 wrapper-banner4 mt-2 mt-2"   style="background-image: url(<?php the_field('banner4'); ?>);">
            <h2 class="banner-title pt-5">Barista Assecories</h2>
            <h4 class="sub-banner-title">Barista Shop</h4>
           <a href="<?php echo get_permalink( wc_get_page_id( 'shop' ) ); ?>"><button class="banner-button">Store Online</button></a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<section class="supplies_area pt-5 pb-5 display-sm-none">
  <div class="container">
    <div class="row no-gutters">
      <div class="col-lg-12">
        <div class="d-flex flex-row">
          <div class="line1">
            <span class="figure-line1"></span>
          </div>
          <div class="title-supplies_area">
            <h3 class="text-center">BARISTA SUPPLIES</h3>
          </div>
          <div class="line2">
            <span class="figure-line1"></span>
          </div>
        </div>
      </div>
    </div>
    <div class="row no-gutters">
      <div class="col-lg-12">
          <?php echo do_shortcode('[products limit="3"  ]'); ?>
      </div>
    </div>
  </div>
</section>
<section class="barista_brands mt-5 display-sm-none">
  <div class="container">
    <div class="row no-gutters">
      <div class="col-lg-12">
        <div class="d-flex flex-row">
          <div class="title-supplies_area">
            <h3 class="text-center">BARISTA BRANDS</h3>
          </div>
          <div class="line3">
            <span class="figure-line1"></span>
          </div>
        </div>
      </div>
    </div>

    <div class="row no-gutters">
      <div class="col-lg-12">
        <div id="shopCarousel" class="carousel slide" data-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <div class="row">
                <div class="col-md-3">
                  <div class="card">
                    <img src="<?php the_field('brand_image1'); ?>" alt="Image" style="max-width:100%;">
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="card">
                    <img src="<?php the_field('brand_image2'); ?>" alt="Image" style="max-width:100%;">
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="card">
                    <img src="<?php the_field('brand_image3'); ?>" alt="Image" style="max-width:100%;">
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="card">
                    <img src="<?php the_field('brand_image4'); ?>" alt="Image" style="max-width:100%;">
                  </div>
                </div>
              </div>

            </div>
            <div class="carousel-item">
              <div class="row">
                <div class="col-md-3">
                  <div class="card">
                    <img src="<?php the_field('brand_image5'); ?>" alt="Image" style="max-width:100%;">
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="card">
                    <img src="<?php the_field('brand_image6'); ?>" alt="Image" style="max-width:100%;">
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="card">
                    <img src="<?php the_field('brand_image7'); ?>" alt="Image" style="max-width:100%;">
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="card">
                    <img src="<?php the_field('brand_image5'); ?>" alt="Image" style="max-width:100%;">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<section class="best_selling_product mt-5 display-sm-none">
  <div class="container">
    <div class="row no-gutters">
      <div class="col-lg-12">
        <div class="d-flex flex-row">
          <div class="line1">
            <span class="figure-line1"></span>
          </div>
          <div class="title-supplies_area1">
            <h3 class="text-center">OUR BESTSELLING BARISTA ACCESSORIES</h3>
          </div>
          <div class="line2">
            <span class="figure-line1"></span>
          </div>
        </div>
      </div>
    </div>
    <div class="row no-gutters">
      <div class="col-lg-12">
        <?php echo do_shortcode('[products limit="3" ]'); ?>
      </div>
    </div>
  </div>
</section>
<section class="shipping_area mt-5">
  <div class="container">
    <div class="row no-gutters">
      <div class=" col-sm-12 col-lg-12">
        <div class="d-flex justify-content-center">
          <div>
            <img class="image-shipping_area" src="<?php the_field('free_sheeping'); ?>" alt="">
            <h3 class="title-shipping_area text-center">FREE SHIPPING IN BARISTA SHOP</h3>
            <p class="subtitle-shipping_area text-center">Free shipping to Europe from 200 €</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>



<?php

get_footer();
