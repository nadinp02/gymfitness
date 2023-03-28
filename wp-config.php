<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'gymfitness' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '8[=,G|*GdqCQ}HaIT2,Al2[^]j6/!R#/K4+iP;0<!._>-t&;xG%<?LUC&x-.W4/Z' );
define( 'SECURE_AUTH_KEY',  'oG<e_$4_-bD%kmFqz&c%(5 o>0e?zb6FGD+jE^21yXoa(ETL9i$0nX%ey~IzIFXJ' );
define( 'LOGGED_IN_KEY',    '-1iikh{qcRN`a}0s-}UX5<OP]`mY.mO2=U~fgF{#;h!fX9`okO08 -*ix|79!u7{' );
define( 'NONCE_KEY',        'S]^gY}+kwqp)~zZj^b9kn!q!;!=F&S5xm&0K#B)k?wN64_.abnw)=6/_nG0sd5#=' );
define( 'AUTH_SALT',        'l}@dE6Cv>/9BB?=]o= dfHpR(^Z5}Z9L7uPCm(C9J@.B#,Y;@0#wjV_-1?69b+|>' );
define( 'SECURE_AUTH_SALT', ',xGc`?(C8a@Zg+/N-kqo>+`bu[n,<,4:A8RJrN=O^z}rnM5^<BPi[(?#Bo-V&bsD' );
define( 'LOGGED_IN_SALT',   'T,8*tBtVn[cKB/HfV`o=~/<6U|#!}SCW lFN2U6vg! m/rFUrIlapn6HF~6Bp}rI' );
define( 'NONCE_SALT',       'X.WQ)Np %7G<r%SrojBokEb`s0:Z3Qt~V2/tJ%Z|]dim?2bW.!|Wj;t,t9=N*?%`' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
