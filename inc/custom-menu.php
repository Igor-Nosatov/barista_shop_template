<?php
function aside_menu1_menu_link( $atts, $item, $args ) {
		if($args->theme_location == 'aside-menu1') {
			$atts['class'] = 'nav-link nav-link_product-brands text-uppercase';
		}
    return $atts;
}
add_filter( 'nav_menu_link_attributes', 'aside_menu1_menu_link', 10, 3 );


function aside_menu1_menu_classes($classes, $item, $args) {
  if($args->theme_location == 'aside-menu1') {
    $classes[] = 'nav-item';
  }
  return $classes;
}
add_filter('nav_menu_css_class', 'aside_menu1_menu_classes', 1, 3);


function aside_menu2_menu_link( $atts, $item, $args ) {
		if($args->theme_location == 'aside-menu2') {
			$atts['class'] = 'nav-link nav-link_product-tools text-uppercase';
		}
    return $atts;
}
add_filter( 'nav_menu_link_attributes', 'aside_menu2_menu_link', 10, 3 );


function aside_menu2_menu_classes($classes, $item, $args) {
  if($args->theme_location == 'aside-menu2') {
    $classes[] = 'nav-item';
  }
  return $classes;
}
add_filter('nav_menu_css_class', 'aside_menu2_menu_classes', 1, 3);


function aside_menu3_menu_link( $atts, $item, $args ) {
		if($args->theme_location == 'aside-menu3') {
			$atts['class'] = 'nav-link  nav-link_product-equipment text-uppercase';
		}
    return $atts;
}
add_filter( 'nav_menu_link_attributes', 'aside_menu3_menu_link', 10, 3 );


function aside_menu3_menu_classes($classes, $item, $args) {
  if($args->theme_location == 'aside-menu3') {
    $classes[] = 'nav-item';
  }
  return $classes;
}
add_filter('nav_menu_css_class', 'aside_menu3_menu_classes', 1, 3);



function subheader_menu_link( $atts, $item, $args ) {
		if($args->theme_location == 'subheader-menu') {
			$atts['class'] = 'nav-link title_menu-account';
		}
    return $atts;
}
add_filter( 'nav_menu_link_attributes', 'subheader_menu_link', 10, 3 );


function subheader_menu_classes($classes, $item, $args) {
  if($args->theme_location == 'subheader-menu') {
    $classes[] = 'nav-item';
  }
  return $classes;
}
add_filter('nav_menu_css_class', 'subheader_menu_classes', 1, 3);

function mobile_menu_link( $atts, $item, $args ) {
		if($args->theme_location == 'mobile-menu') {
			$atts['class'] = 'nav-link text-dark';
		}
    return $atts;
}
add_filter( 'nav_menu_link_attributes', 'mobile_menu_link', 10, 3 );


function mobile_menu_classes($classes, $item, $args) {
  if($args->theme_location == 'mobile-menu') {
    $classes[] = 'nav-item';
  }
  return $classes;
}
add_filter('nav_menu_css_class', 'mobile_menu_classes', 1, 3);

function information_menu_link( $atts, $item, $args ) {
		if($args->theme_location == 'information-menu') {
			$atts['class'] = 'nav-link link-footer text-uppercase';
		}
    return $atts;
}
add_filter( 'nav_menu_link_attributes', 'information_menu_link', 10, 3 );


function information_menu_classes($classes, $item, $args) {
  if($args->theme_location == 'information-menu') {
    $classes[] = 'nav-item';
  }
  return $classes;
}
add_filter('nav_menu_css_class', 'information_menu_classes', 1, 3);


function barista_menu_link( $atts, $item, $args ) {
		if($args->theme_location == 'barista-tools-menu') {
			$atts['class'] = 'nav-link link-footer text-uppercase';
		}
    return $atts;
}
add_filter( 'nav_menu_link_attributes', 'barista_menu_link', 10, 3 );


function barista_menu_classes($classes, $item, $args) {
  if($args->theme_location == 'barista-tools-menu') {
    $classes[] = 'nav-item';
  }
  return $classes;
}

add_filter('nav_menu_css_class', 'barista_menu_classes', 1, 3);




function tags_menu_link( $atts, $item, $args ) {
		if($args->theme_location == 'tags-menu') {
			$atts['class'] = 'tag-link';
		}
    return $atts;
}
add_filter( 'nav_menu_link_attributes', 'tags_menu_link', 10, 3 );


function tags_classes($classes, $item, $args) {
  if($args->theme_location == 'tags-menu') {
    $classes[] = 'tag';
  }
  return $classes;
}

add_filter('nav_menu_css_class', 'tags_classes', 1, 3);





 ?>
