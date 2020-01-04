<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Barista
 */

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<?php wp_head(); ?>
</head>

<body>
  <header class="header">
    <section class="menu-account">
      <div class="container">
        <div class="row no-gutters">
          <div class="col-lg-12">
            <div class="d-flex flex-row justify-content-between">
              <div class="title_menu-account">BARISTA SHOP | COFFEE TOOLS & ACCESSORIES</div>
              <div>
								<?php
								wp_nav_menu( array(
				           'theme_location'    => 'subheader-menu',
				           'depth'             => 0,
				           'container'         => '',
				           'menu_class'        => 'nav',
								 ) );
								?>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="header-menu">
      <div class="container">
        <div class="row no-gutters">
          <div class="col-lg-12">
            <nav class="navbar navbar-expand-lg">
              <a class="brand-logo" href="<?php echo get_home_url(); ?>"><?php  bloginfo( 'name' ); ?></a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fas fa-bars 2-x"></i>
              </button>

              <div class="collapse navbar-collapse" id="navbarSupportedContent">

									<?php
									wp_nav_menu( array(
					          'theme_location'    => 'header-menu',
					             'depth'             => 2,
					             'container'         => 'div',
					             'container_class'   => 'collapse navbar-collapse display-sm-none',
					             'menu_class'        => 'nav navbar-nav',
					             'fallback_cb'       => 'WP_Bootstrap_Navwalker::fallback',
					             'walker'            => new WP_Bootstrap_Navwalker(),
									 ) );
									?>

								<div class="mobile-menu display-md-none ">
									<?php
									wp_nav_menu( array(
										 'theme_location'    => 'mobile-menu',
										 'depth'             => 0,
										 'container'         => '',
										 'menu_class'        => 'nav flex-column',
									 ) );
									?>
								</div>
							  <div class="cart">
                  <a href="<?php echo get_permalink( wc_get_page_id( 'cart' ) ); ?>"> Cart&nbsp;<i class="fas fa-shopping-bag fa-2x"></i></a>
<a class="cart-customlocation" href="<?php echo wc_get_cart_url(); ?>" title="<?php _e( 'View your shopping cart' ); ?>"><?php echo sprintf ( _n( '%d item', '%d items', WC()->cart->get_cart_contents_count() ), WC()->cart->get_cart_contents_count() ); ?> - <?php echo WC()->cart->get_cart_total(); ?></a>
                </div>
              </div>
            </nav>
          </div>
        </div>
      </div>
    </section>
  </header>
