<?php
/** 
 * As configurações básicas do WordPress.
 *
 * Esse arquivo contém as seguintes configurações: configurações de MySQL, Prefixo de Tabelas,
 * Chaves secretas, Idioma do WordPress, e ABSPATH. Você pode encontrar mais informações
 * visitando {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. Você pode obter as configurações de MySQL de seu servidor de hospedagem.
 *
 * Esse arquivo é usado pelo script ed criação wp-config.php durante a
 * instalação. Você não precisa usar o site, você pode apenas salvar esse arquivo
 * como "wp-config.php" e preencher os valores.
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar essas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define('DB_NAME', 'marjo461_araujotrans');

/** Usuário do banco de dados MySQL */
define('DB_USER', 'marjo461_admin');

/** Senha do banco de dados MySQL */
define('DB_PASSWORD', 'Tamise@1003@@');

/** nome do host do MySQL */
define('DB_HOST', 'localhost');

/** Conjunto de caracteres do banco de dados a ser usado na criação das tabelas. */
define('DB_CHARSET', 'utf8');

/** O tipo de collate do banco de dados. Não altere isso se tiver dúvidas. */
define('DB_COLLATE', '');

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * Você pode alterá-las a qualquer momento para desvalidar quaisquer cookies existentes. Isto irá forçar todos os usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '[2M0d8J,BM1[S~6XO;Gw_)lw-|gzTg<0Jd_bbNl0-X@eUs.-&E;$l4W-BkP~q6ey');
define('SECURE_AUTH_KEY',  '6aQj/c1-++U,Mz:P-[H+6,S#]<g~7.(i|K%%j>D76kH6:4.G,lV^*pM`XT`kHq@v');
define('LOGGED_IN_KEY',    'S~M>o>-VvX*Q:}MZRLYPwX2-Gy}[[Kk0%WSiRH3#_C7QlG!?]RMxSD}%#[|=tgl_');
define('NONCE_KEY',        'nTPAWY(:F-Q)#5/bO|G;Mg[/W<RL9CL1^Ox2L$58oe Fcx&3*j)SMtLd:<hXu(1(');
define('AUTH_SALT',        'cN=(*3*=Ol,;glo+o:jB*:Inds:LQ5Q,T7<KI1ZG5m]A|n`K`s|t#]|4peBU-fOd');
define('SECURE_AUTH_SALT', 'GK HNfGsq]PjR#^FYU-L+_OBXp-#C~urMvq%hSS7j-+OCddQUNuTFo?c/ 6]#-Wd');
define('LOGGED_IN_SALT',   'tWC//zk4#kt(b=`]zkL(+y|V0fXe/|kHK]0a1Y^HkI-v@+#Y6^3<K6[h_C(ZK,4w');
define('NONCE_SALT',       '=3YRfp URj=B^_i.ce3no/%kAP.TfOOzKnqVcH4|ST!*_]/%J#.X4M:B-?sqA>1x');

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der para cada um um único
 * prefixo. Somente números, letras e sublinhados!
 */
$table_prefix  = 'wp_';


/**
 * Para desenvolvedores: Modo debugging WordPress.
 *
 * altere isto para true para ativar a exibição de avisos durante o desenvolvimento.
 * é altamente recomendável que os desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 */
define('WP_DEBUG', false);

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');
	
/** Configura as variáveis do WordPress e arquivos inclusos. */
require_once(ABSPATH . 'wp-settings.php');