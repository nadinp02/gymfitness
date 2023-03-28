<?php
// Template Name: Galeria
get_header();
?>
<main class="container seccion">
    <?php

    while (have_posts()) : the_post();
        the_title('<h1 class="text-center text-primary">', '</h1>');

        $galeria = get_post_gallery(get_the_ID(), false);

        $galeria_imagenes_ID = explode(",", $galeria['ids']);
    ?>
        <ul class="galeria-imagenes">
            <?php
            foreach ($galeria_imagenes_ID as $id){
                $imagen_grande = wp_get_attachment_image_src($id, 'large')[0];
                $imagen_full = wp_get_attachment_image_src($id, 'full')[0];
                ?>
                <li>
                    <a data-lightbox="galeria" href="<?php echo $imagen_grande;?>">
                        <img src="<?php echo $imagen_grande;?>" alt="imagen galeria">
                    </a>
                </li>
                <?php
            }
            ?>
        </ul>
    <?php
    endwhile;
    ?>
</main>

<?php
get_footer();
?>