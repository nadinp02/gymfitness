<?php
// Template Name: Listado de Clases (No Siderbars)
get_header();
?>

<main class="container seccion">
    <?php
    get_template_part('template-parts/pagina');
    ?>
   <?php gymfitness_lista_clases();?>
</main>

<?php
get_footer();
?>