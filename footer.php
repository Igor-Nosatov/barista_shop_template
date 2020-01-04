<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Barista
 */

?>


<footer class="footer mt-5">
    <div class="container">
      <div class="row no-gutters">
        <div class=" col-sm-12 col-lg-3 p-2">
          <h3 class="title-footer"><span class="title-line">ABO</span>UT BARISTA SHOP</h3>
          <p class="text-footer">In Barista Shop we offer you the best international brands related to the world of coffee: Chemex, Aeropress, Hario, Espro, Able, Bonavita, Mahlkönig, CDN. Barista Shop is the reference website for the good barista.
            Barista Tools,
            Accessories, Coffee Equipement and Coffee Products</p>
        </div>
        <div class=" col-sm-12 col-lg-3 p-2">
          <h3 class="title-footer"><span class="title-line">INF</span>ORMATION</h3>
          <?php
          wp_nav_menu( array(
   'container'     => '',
   'theme_location'=> 'information-menu',
   'menu_class'        => 'nav flex-column',
   'depth'         => 0,
   'fallback_cb'   => false,

           ) );
          ?>
        </div>
        <div class=" col-sm-12 col-lg-3 p-2">
          <h3 class="title-footer"><span class="title-line">TAG</span>S</h3>
          <div class="tagcloud">
            <?php
            wp_nav_menu( array(
     'container'     => '',
     'theme_location'=> 'tags-menu',
     'menu_class'        => 'nav d-flex flex-row flex-wrap',
     'depth'         => 0,
     'fallback_cb'   => false,

             ) );
            ?>
          </div>
        </div>
        <div class=" col-sm-12 col-lg-3 p-2">
          <h3 class="title-footer"><span class="title-line">BAR</span>ISTA TOOLS</h3>
          <?php
          wp_nav_menu( array(
   'container'     => '',
   'theme_location'=> 'barista-tools-menu',
   'menu_class'        => 'nav flex-column',
   'depth'         => 0,
   'fallback_cb'   => false,

           ) );
          ?>
        </div>
      </div>
    </div>
  </footer>
	<?php wp_footer(); ?>

	</body>
	</html>
