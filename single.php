<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package Barista
 */

get_header();
?>

<section class="shop_area">
	<div class="container">
		<div class="row no-gutters mt-3 mb-3">
			<div class="col-sm-12 col-lg-12">

		<?php
		while ( have_posts() ) :
			the_post();

			get_template_part( 'template-parts/content', get_post_type() );

			the_post_navigation();

			// If comments are open or we have at least one comment, load up the comment template.
			if ( comments_open() || get_comments_number() ) :
				comments_template();
			endif;

		endwhile; // End of the loop.
		?>

	</div>
</div>
</div>
</section>

<?php
get_footer();
