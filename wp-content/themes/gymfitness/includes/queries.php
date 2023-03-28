<?php
function gymfitness_lista_clases($cantidad = -1)
{
?>
    <ul class="grid-list">
        <?php
        $args = array(
            'post_type' => 'gymfitness_clases',
            'posts_per_page' => $cantidad
        );
        $clases = new WP_Query($args);

        while ($clases->have_posts()) {
            $clases->the_post();
        ?>
            <li class="card">
                <?php the_post_thumbnail(); ?>
                <div class="contenido">
                    <a href="<?php the_permalink(); ?>">
                        <h3><?php the_title(); ?></h3>
                    </a>
                    <?php
                    $hora_inicio = get_field('comiezo_clases');
                    $hora_fin = get_field('fin_clases');
                    ?>
                    <p><?php the_field('dias_clases'); ?> - <?php echo $hora_inicio . " a " . $hora_fin ?></p>
                </div>
            </li>
        <?php
        }
        wp_reset_postdata();
        ?>

    </ul>
<?php
}

function gymfitness_instructores()
{
?>
    <ul class="grid-list instructores">
        <?php
        $args = array(
            'post_type' => 'instructores'
        );
        $instuctores = new WP_Query($args);

        while ($instuctores->have_posts()) {
            $instuctores->the_post();
        ?>
            <li class="instructor">
                <?php the_post_thumbnail('large'); ?>
                <div class="contenido text-center">
                    <h3><?php the_title() ?></h3>
                    <?php the_content() ?>

                    <div clas="especialidad">
                        <?php
                        $esp = get_field('especialidad');

                        foreach ($esp as $e) { ?>
                        <span class="etiqueta">
                            <?php echo esc_html($e); ?>
                        </span>
                        <?php
                        }
                        ?>
                    </div>
                </div>
            </li>
        <?php
        }
        wp_reset_postdata();
        ?>

    </ul>
<?php
}
