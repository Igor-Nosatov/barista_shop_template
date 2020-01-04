<?php

function barista_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Shop Sidebar', 'barista' ),
		'id'            => 'shop-sidebar',
		'description'   => esc_html__( 'Add widgets here.', 'barista' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h4 class="title_product-tools">Barista tools</h4>',
		'after_title'   => '</h4>',
	) );
}
add_action( 'widgets_init', 'barista_widgets_init' );

 ?>
