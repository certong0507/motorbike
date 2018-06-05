<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'motorbike');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '`cq(,u9JUPE=LoDnROO}#w:;E!8>*l9|yp`U^cwjm-+AdJsHLBX[c%$Qlh_@V%S2');
define('SECURE_AUTH_KEY',  'jc{q^RKJU0! 3%_*m5!lI?o:8X`r.d%XA93+btV;&Iq+y_bNN(R>+BO)|o`Q:/lJ');
define('LOGGED_IN_KEY',    ' /OjYycf~3$NP*Doafg w7;GZIZkw)OT)3+Bpex@06k]$xZw#{8b+uR>KFSNDWp}');
define('NONCE_KEY',        'm4;c9Y}ba[[(~elcjLq:XUOZD;)Lh}Fj*b}f;c#vNMZXtS_X/@2QRa/@a1fQiy=<');
define('AUTH_SALT',        'tz2hXr!@`i2OF5&s!IkQE@;x-^.e[zB6}6 zyjVdhgcw@i3:H.G3S,Sl.h0&Y$#^');
define('SECURE_AUTH_SALT', 'h?OU]98U}G5BswTs,Q7L&L)gK1 .`{Jk#[ .U0&w+4s5BKr93,Mv%m6Cg=.}n0{r');
define('LOGGED_IN_SALT',   'vAR[3M@,jum~iCa0Z==nm1ve(f~[6`yT#<S>#:-{W*%5s^6&xPB*<]J0In0@ixn3');
define('NONCE_SALT',       'FkUT-yJ`y <ZvW;?%TC$zeNN;sDOU; Q-q=0i,Mq;%Os=|?BqWoVQQg^TkIiL|b2');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
