<?php
if ( ! function_exists( 'barista_setup' ) ) :

	function barista_setup() {

		load_theme_textdomain( 'barista', get_template_directory() . '/languages' );

		add_theme_support( 'automatic-feed-links' );
		add_theme_support( 'title-tag' );
		add_theme_support( 'post-thumbnails' );

		register_nav_menus( array(
			'header-menu' => esc_html__( 'Header Menu', 'barista_store' ),
			'mobile-menu' => esc_html__( 'Mobile Menu', 'barista_store' ),
			'aside-menu1' => esc_html__( 'Aside Menu1', 'barista_store' ),
			'aside-menu2' => esc_html__( 'Aside Menu2', 'barista_store' ),
			'aside-menu3' => esc_html__( 'Aside Menu3', 'barista_store' ),
			'subheader-menu' => esc_html__( 'Sub Header Menu', 'barista_store' ),
			'account-menu' => esc_html__( 'Account Menu', 'barista_store' ),
			'information-menu' => esc_html__( 'Information Menu', 'barista_store' ),

			'tags-menu' => esc_html__( 'Tags Menu', 'barista_store' ),
			'barista-tools-menu' => esc_html__( 'Barista Tools Menu', 'barista_store' ),

		) );

		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		add_theme_support( 'customize-selective-refresh-widgets' );

		add_theme_support( 'custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		) );
	}
endif;
add_action( 'after_setup_theme', 'barista_setup' );
 ?>
