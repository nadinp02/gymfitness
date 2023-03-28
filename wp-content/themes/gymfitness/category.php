<?php
get_header();
?>
<main class="seccion container">
    <?php 
    $categoria = get_queried_object();
    ?>
    <h2 class="text-center text-primary">Categoria: <?php echo $categoria->name;?></h2>
    <ul class="grid-list">
        <?php
        while (have_posts()) {
            the_post();
            get_template_part('template-parts/blog');
        };

        ?>
    </ul>
</main>
<?php
get_footer();
?>