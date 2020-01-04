<?php
/**
 * Login Form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/myaccount/form-login.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.6.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly.
}

do_action( 'woocommerce_before_customer_login_form' ); ?>

<?php if ( 'yes' === get_option( 'woocommerce_enable_myaccount_registration' ) ) : ?>

	<section class="login_and_register_area mt-5 mb-5">
	    <div class="container">
	      <div class="row no-gutters">
					  <div class="col-sm-12 col-lg-6">

<?php endif; ?>

<h3 classs="p-3  product-title"><?php esc_html_e( 'Returning Customer? Log In.', 'woocommerce' ); ?></h3>

		<form class="woocommerce-form woocommerce-form-login login" method="post">

			<?php do_action( 'woocommerce_login_form_start' ); ?>

			<div class="form-row">
				<div class="col-md-12 mb-3  pr-5">
				  <label for="username"  class="col-sm-12 col-form-label"><?php esc_html_e( 'Username or email address', 'woocommerce' ); ?>&nbsp;<span class="required">*</span></label>
				  <input type="text" class="form-control" name="username" id="username" autocomplete="username" value="<?php echo ( ! empty( $_POST['username'] ) ) ? esc_attr( wp_unslash( $_POST['username'] ) ) : ''; ?>" /><?php // @codingStandardsIgnoreLine ?>
				</div>
			<div class="col-md-12 mb-3  pr-5">
				<label for="password" class="col-sm-12 col-form-label"><?php esc_html_e( 'Password', 'woocommerce' ); ?>&nbsp;<span class="required">*</span></label>
				<input class="form-control" type="password" name="password" id="password" autocomplete="current-password" />
			</div>

			<?php do_action( 'woocommerce_login_form' ); ?>

				<div class="col-md-12 mb-3  pr-5">
				<?php wp_nonce_field( 'woocommerce-login', 'woocommerce-login-nonce' ); ?>
        <button type="submit" class="main-button" name="login" value="<?php esc_attr_e( 'Log in', 'woocommerce' ); ?>" ><i class="fas fa-users fa-2x"></i></i><?php esc_html_e( 'Log in', 'woocommerce' ); ?></button>
			</div>
				<div class="col-md-12 mb-3  pr-5">
				<a href="<?php echo esc_url( wp_lostpassword_url() ); ?>"><?php esc_html_e( 'Lost your password?', 'woocommerce' ); ?></a>
			</div>

			<?php do_action( 'woocommerce_login_form_end' ); ?>

		</form>

<?php if ( 'yes' === get_option( 'woocommerce_enable_myaccount_registration' ) ) : ?>

	</div>
  </div>
	<div class="col-sm-12 col-lg-6">

		<h3 classs="p-3 product-title"><?php esc_html_e( 'New Customer? Create an Account.', 'woocommerce' ); ?></h3>

		<form method="post" class="woocommerce-form woocommerce-form-register register" <?php do_action( 'woocommerce_register_form_tag' ); ?> >

			<?php do_action( 'woocommerce_register_form_start' ); ?>

			<?php if ( 'no' === get_option( 'woocommerce_registration_generate_username' ) ) : ?>
				<div class="form-row">
					<div class="col-md-12 mb-3  pr-5">
					<label  class="col-sm-12 col-form-label" for="reg_username"><?php esc_html_e( 'Username', 'woocommerce' ); ?>&nbsp;<span class="required">*</span></label>
					<input type="text" class="form-control" name="username" id="reg_username" autocomplete="username" value="<?php echo ( ! empty( $_POST['username'] ) ) ? esc_attr( wp_unslash( $_POST['username'] ) ) : ''; ?>" /><?php // @codingStandardsIgnoreLine ?>
				</div>

			<?php endif; ?>

      <div class="col-md-12 mb-3  pr-5">
				<label  class="col-sm-12 col-form-label" for="reg_email"><?php esc_html_e( 'Email address', 'woocommerce' ); ?>&nbsp;<span class="required">*</span></label>
				<input type="email" class="form-control" name="email" id="reg_email" autocomplete="email" value="<?php echo ( ! empty( $_POST['email'] ) ) ? esc_attr( wp_unslash( $_POST['email'] ) ) : ''; ?>" /><?php // @codingStandardsIgnoreLine ?>
			</div>

			<?php if ( 'no' === get_option( 'woocommerce_registration_generate_password' ) ) : ?>

         <div class="col-md-12 mb-3  pr-5">
					<label  class="col-sm-12 col-form-label" for="reg_password"><?php esc_html_e( 'Password', 'woocommerce' ); ?>&nbsp;<span class="required">*</span></label>
					<input type="password" class="form-control" name="password" id="reg_password" autocomplete="new-password" />
				</div>

			<?php else : ?>

				<div class="col-md-12 mb-3  pr-5"><?php esc_html_e( 'A password will be sent to your email address.', 'woocommerce' ); ?></div>

			<?php endif; ?>

			<?php do_action( 'woocommerce_register_form' ); ?>

			<div class="col-md-12 mb-3  pr-5">
				<?php wp_nonce_field( 'woocommerce-register', 'woocommerce-register-nonce' ); ?>
        <button type="submit" class="main-button"  name="register" value="<?php esc_attr_e( 'Register', 'woocommerce' ); ?>" ><i class="fas fa-plus fa-2x"></i><?php esc_html_e( 'Register And Continue', 'woocommerce' ); ?></button>
			</div>

			<?php do_action( 'woocommerce_register_form_end' ); ?>

		</form>

	</div>

</div>
<?php endif; ?>

<?php do_action( 'woocommerce_after_customer_login_form' ); ?>

      </div>
    </div>
</section>
