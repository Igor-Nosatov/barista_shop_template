<?php
/**
 * The Template for displaying all single products
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see 	    https://docs.woocommerce.com/document/template-structure/
 * @package 	WooCommerce/Templates
 * @version     1.6.4
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

get_header( 'shop' ); ?>

<section class="product_area">
	<div class="container">
		<div class="row no-gutters">
			<div class="col-sm-12 col-lg-3">
				<aside class="aside">
					 <h3 class="title_product-categories">PRODUCTS CATEGORIES</h3>
					 <div class="products-brands">
							<h4 class="title_product-brands">All brands</h4>
							<?php
							wp_nav_menu( array(
								 'theme_location'    => 'aside-menu1',
								 'depth'             => 0,
								 'container'         => '',
								 'menu_class'        => 'nav flex-column',
							 ) );
							?>
					 </div>
					 <div class="products-tools">
							<h4 class="title_product-tools">Barista tools</h4>
							<?php
						 wp_nav_menu( array(
								'theme_location'    => 'aside-menu2',
								'depth'             => 0,
								'container'         => '',
								'menu_class'        => 'nav flex-column',
							) );
						 ?>
					</div>
					<div class="products-equipment">
							<h4 class="title_product-equipment">Equipment</h4>
							<?php
							wp_nav_menu( array(
								 'theme_location'    => 'aside-menu3',
								 'depth'             => 0,
								 'container'         => '',
								 'menu_class'        => 'nav flex-column',
							 ) );
							?>
					</div>
				</aside>
				<div class="featured-products mt-5 mb-5 display-sm-none">
						 <h3 class="title_product-featured">FEATURED PRODUCTS</h3>
						 <?php dynamic_sidebar( 'shop-sidebar' ); ?>
				</div>
			</div>
				<div class="col-sm-12 col-lg-9">

		<?php while ( have_posts() ) : the_post(); ?>

			<?php wc_get_template_part( 'content', 'single-product' ); ?>

		<?php endwhile; // end of the loop. ?>

	<?php
		/**
		 * woocommerce_after_main_content hook.
		 *
		 * @hooked woocommerce_output_content_wrapper_end - 10 (outputs closing divs for the content)
		 */
		do_action( 'woocommerce_after_main_content' );
	?>


	</div>
  </div>
  </div>
</section>
<?php get_footer( 'shop' );

/* Omit closing PHP tag at the end of PHP files to avoid "headers already sent" issues. */
