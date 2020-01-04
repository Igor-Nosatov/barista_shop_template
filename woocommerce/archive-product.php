<?php
/**
 * The Template for displaying product archives, including the main shop page which is a post type archive
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/archive-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.4.0
 */

defined( 'ABSPATH' ) || exit;

get_header( 'shop' );


/**
 * Hook: woocommerce_before_main_content.
 *
 * @hooked woocommerce_output_content_wrapper - 10 (outputs opening divs for the content)
 * @hooked woocommerce_breadcrumb - 20
 * @hooked WC_Structured_Data::generate_website_data() - 30
 */

?>
<section class="shop_area">
	<div class="container">
		<div class="row no-gutters mt-3 mb-3">
			<div class="col-sm-12 col-lg-12">
			<?php do_action( 'woocommerce_before_main_content' ); ?>
				</div>
		</div>
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

			</div>
			<div class="col-sm-12 col-lg-9">

<?php
if ( woocommerce_product_loop() ) {

	/**
	 * Hook: woocommerce_before_shop_loop.
	 *
	 * @hooked woocommerce_output_all_notices - 10
	 * @hooked woocommerce_result_count - 20
	 * @hooked woocommerce_catalog_ordering - 30
	 */
	 ?>

<?php
	do_action( 'woocommerce_before_shop_loop' );

	woocommerce_product_loop_start();

	if ( wc_get_loop_prop( 'total' ) ) {
		while ( have_posts() ) {
			the_post();

			/**
			 * Hook: woocommerce_shop_loop.
			 */
			do_action( 'woocommerce_shop_loop' );

			wc_get_template_part( 'content', 'product' );
		}
	}

	woocommerce_product_loop_end();

	/**
	 * Hook: woocommerce_after_shop_loop.
	 *
	 * @hooked woocommerce_pagination - 10
	 */
	do_action( 'woocommerce_after_shop_loop' );
} else {
	/**
	 * Hook: woocommerce_no_products_found.
	 *
	 * @hooked wc_no_products_found - 10
	 */
	do_action( 'woocommerce_no_products_found' );
}

/**
 * Hook: woocommerce_after_main_content.
 *
 * @hooked woocommerce_output_content_wrapper_end - 10 (outputs closing divs for the content)
 */
do_action( 'woocommerce_after_main_content' );

/**
 * Hook: woocommerce_sidebar.
 *
 * @hooked woocommerce_get_sidebar - 10
 */


?>
         </div>


       </div>
    </div>
  </section>

<?php
get_footer( 'shop' );
