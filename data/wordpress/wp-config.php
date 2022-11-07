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
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'my_database' );

/** Database username */
define( 'DB_USER', 'EVBLOOD' );

/** Database password */
define( 'DB_PASSWORD', '123' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

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
define( 'AUTH_KEY',          '[:Md#t@Ilb$|*kxMEKU$D^9T/Nn@vp&Ap}<Pua#riShnQawl2vFL,^rQOF7%d-)K' );
define( 'SECURE_AUTH_KEY',   'eV3&pv+,X!fX@VoD~aWw0|Ky=VW6d.jj&m?O0{(8nqbF^0;lV;Pk6@$9@5B4$*4r' );
define( 'LOGGED_IN_KEY',     '`]=J[*v_@oD5q!:VKt1GsCDtB3&eE%k_q!1i1Lo7Ta_wLI9lnikl5[jdv@AQ`2b1' );
define( 'NONCE_KEY',         'Hl{&6Z1?D9y)gk8Gp3 :0nz!)pMXT@RDj+-hTE#[:S7H:q5xSQGw)BA 90k*|K7k' );
define( 'AUTH_SALT',         'eVMS=i|^4W5?`TF]Zli* V0=xBRcgQ/3(a<8jw)`eE:6LW0O:<-HugIqOW BX/M ' );
define( 'SECURE_AUTH_SALT',  '+rv[S.S,u^*6W9zpVR&DQ&! Bh9NUHDtAJ0Dokxd^XQN;-mT!>C*1z^,! #RQKVV' );
define( 'LOGGED_IN_SALT',    'm0x2%yYY=9ALV1NuQ2#)XaRqjii*40 FX%n&3v)Q{nza6#Z/[fVYL&uVFEYt (.U' );
define( 'NONCE_SALT',        'b^Bt*l|,<+cp8`N80~B(Z,$Bv8)P.Ea0`X@:cqgNREs/lH%JR,ea)YdpS8(;9aE7' );
define( 'WP_CACHE_KEY_SALT', 'L`/~hwg4~4 uJm2h=fiSr5M:FC}sk1:.[|eQ-U^1uSK,Ztb?yqMr#D,`Z&9K:86w' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */

define('WP_REDIS_HOST', 'redis');
define('WP_REDIS_PORT', 6379);
define('WP_REDIS_DISABLED', false);


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
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
