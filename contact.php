<?php
/**
 * Template name:Contact page
 *
 */

get_header();
?>

<section class="contact_area mt-5 mb-5">
    <div class="container">
      <div class="row no-gutters">
        <div class="col-sm-12 col-lg-6">
          <h3 class="pt-3 pb-3 product-title">Contact</h3>
          <?php  echo do_shortcode('[contact-form-7 id="333" title="Contact form 1"]');?>
        </div>
        <div class="col-sm-12 col-lg-6">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d83034.22883510966!2d31.97919057845511!3d49.431223545400044!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40d14b866064977f%3A0xf8dce723a9cbb5d8!2z0KfQtdGA0LrQsNGB0YHRiywg0KfQtdGA0LrQsNGB0YHQutCw0Y8g0L7QsdC70LDRgdGC0YwsIDE4MDAw!5e0!3m2!1sru!2sua!4v1576839223108!5m2!1sru!2sua" width="100%" height="650" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
        </div>
      </div>
    </div>
  </section>

<?php

get_footer();
