<?php

function barista_style() {
	wp_enqueue_style( 'barista_fontawesome', get_template_directory_uri() . '/assets/css/all.min.css', array(),  null );
	wp_enqueue_style( 'barista_style', get_stylesheet_uri() );
}
add_action( 'wp_enqueue_scripts', 'barista_style' );

function barista_scripts() {
  wp_enqueue_script( 'barista-bundle', get_template_directory_uri() . '/assets/js/bundle.js', array(), '20151215', true );
	wp_enqueue_script( 'barista-navigation', get_template_directory_uri() . '/assets/js/navigation.js', array(), '20151215', true );
	wp_enqueue_script( 'barista-skip-link-focus-fix', get_template_directory_uri() . '/assets/js/skip-link-focus-fix.js', array(), '20151215', true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'barista_scripts' );


 ?>
