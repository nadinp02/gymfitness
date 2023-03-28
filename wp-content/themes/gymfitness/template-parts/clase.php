<?php

while (have_posts()) : the_post();
    the_title('<h1 class="text-center text-primary">', '</h1>');
    if (has_post_thumbnail()) {
        the_post_thumbnail('full', array('class' => 'imagen-destacada'));
    }
    

        $hora_inicio = get_field('comiezo_clases');
        $hora_fin = get_field('fin_clases');
        ?>
        <p class="informacion-clase">
            <?php the_field('dias_clases'); ?> - <?php echo $hora_inicio . " a " . $hora_fin ?>
        </p>
        <?php
    
    the_content();

endwhile;
