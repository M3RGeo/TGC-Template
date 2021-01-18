<?php
$MzLang = new Language(ROOT_PATH . '/custom/templates/Mooz/core/language', LANGUAGE);

$META_DATOS = URL::build('/panel/core/metadata/');

require(ROOT_PATH . '/custom/templates/Mooz/core/panel/KASDISAASDYIADG.php');

if (Input::exists()) {
	if (Token::check(Input::get('token'))) {
        $cache->setCache('Mooz-baleehh');
        if (isset($_POST['General'])) {
            $GENERAL_INPUT = array(
                'WEB_NAME' => $_POST['webname'], 
                'WEB_DESC' => $_POST['webDescription'], 
                'WEB_KEYW' => $_POST['webKeywords'], 
                'WEB_LOGO' => $_POST['webLogo'], 
                'WEB_BANN' => $_POST['webBanner'],
                'WEB_ANUN' => $_POST['webanuncio'], 
                'WEB_TEM' => $_POST['webte'], 
                'WEB_FUE' => $_POST['webfue'], 
                'WEB_ANI' => $_POST['webani'], 
            );
            $cache->store('General_Settigns', $GENERAL_INPUT);
            $success = 'Informacion enviada';
        }
        if (isset($_POST['carucel'])) {
            $carucel = array(
                'ACTIVE' => $_POST['carrucelyesno'], 
                'URL1' => $_POST['url1'], 
                'URL2' => $_POST['url2'], 
                'URL3' => $_POST['url3'], 
                'TITULO1' => $_POST['titulo1'], 
                'TITULO2' => $_POST['titulo2'],
                'TITULO3' => $_POST['titulo3'], 
                'DES1' => $_POST['DES1'], 
                'DES2' => $_POST['DES2'], 
                'DES3' => $_POST['DES3'], 
            );
            $cache->store('Carucel_Settigns', $carucel);
            $success = 'Informacion enviada';
        }
        if (isset($_POST['Styles'])) {
           try {
                file_put_contents(ROOT_PATH . '/custom/templates/Mooz/core/assets/css/custom.css', $_POST['customcsss']);
                
            $SCSS_INPUT = array(
                // COLORES PRIMARIOS
                'PRIMARY_OP' => $_POST['primary-op'], 
                'PRIMARY_1' => $_POST['PRIMARY_1'], 
                'PRIMARY_2' => $_POST['PRIMARY_2'], 
                'SECONDARY' => $_POST['SECONDARY'], 
                'LIGHT' => $_POST['LIGHT'], 
                'DARK' => $_POST['DARK'], 
                'SUCCESS' => $_POST['SUCCESS'], 
                'INFO' => $_POST['INFO'], 
                'WARNING' => $_POST['WARNING'], 
                'DANGER' => $_POST['DANGER'], 
                // OTHERS
                'BODY' => $_POST['BODY'],
                'HICONS' => $_POST['HICONS'], 
                'F_1' => $_POST['FONT_1'], 
                'F_2' => $_POST['FONT_2'], 
                'F_3' => $_POST['FONT_3'], 
                'F_4' => $_POST['FONT_4'], 
                'CARD_B' => $_POST['CARDB'], 
                'CARD_F' => $_POST['CARDF'], 
                'FUENTE' => $_POST['FONT_F'], 
                'FUENTE2' => $_POST['FONT_F2'], 
                'SFUENTE' => $_POST['FONT_S'], 
            );
            $cache->store('SCSS_Settigns', $SCSS_INPUT);
                
            $json_string = json_encode($SCSS_INPUT, JSON_PRETTY_PRINT);
            $file = ROOT_PATH . '/custom/templates/Mooz/core/settings/styles.json';
            file_put_contents($file, $json_string);

            $success = 'Informacion enviada';
            
           } catch (\Throwable $th) {
               echo $th;
           }            
        }
        if (isset($_POST['Anuncio'])) {
           try {
                
            $ANUNCIO_INPUT = array(
                // Anuncios
                'TITULO' => $_POST['ANUNCIO_TITU'],
                'DESCRI' => $_POST['ANUNCIO_DESC'],
                'TIPO' => $_POST['ANUNCIO_TIPO'],
            );
            $cache->store('ANUNCIO_Settigns', $ANUNCIO_INPUT);

            $success = 'Informacion enviada';
            
           } catch (\Throwable $th) {
               echo $th;
           }            
        }
        if (isset($_POST['FOOTER'])) {
           try {
                
            $FOOTERTEXT_INPUT = array(
                // Anuncios
                'FTEXTO' => $_POST['FooterText'],
                'TITLE1' => $_POST['ftitle1'],
                'TITLE2' => $_POST['ftitle2'],
                'TITLE3' => $_POST['ftitle3'],
            );
            $cache->store('FOOTERTEXT_Settigns', $FOOTERTEXT_INPUT);
    
            $success = 'Informacion enviada';
            
           } catch (\Throwable $th) {
               echo $th;
           }            
        }
        if (isset($_POST['widgets'])) {
           try {
                
            $widgetsTEXT_INPUT = array(
                // Anuncios
                'towk' => $_POST['ENABLETOWK'],
                'towk_id' => $_POST['TOWKID'],
                'DIS' => $_POST['DIS'],
                'DISID' => $_POST['DISID'],
                'DISCID' => $_POST['DISCID'],
                'UPTOP' => $_POST['UPTOP'],
                'DISP1' => $_POST['DISP1'],
                'DISP2' => $_POST['DISP2'],
            );
            $cache->store('ADDONSTEXT_Settigns', $widgetsTEXT_INPUT);
    
            $success = 'Informacion enviada';
            
           } catch (\Throwable $th) {
               echo $th;
           }            
        }
    }
}


$resultados_ADDNOS = $cache->retrieve('ADDONSTEXT_Settigns');
$addons = array(
    $resultados_ADDNOS['towk'], 
    $resultados_ADDNOS['towk_id'], 
    $resultados_ADDNOS['DIS'],
    $resultados_ADDNOS['DISID'], 
    $resultados_ADDNOS['DISCID'], 
    $resultados_ADDNOS['UPTOP'],
    $resultados_ADDNOS['DISP1'],
    $resultados_ADDNOS['DISP2'],
    
);

$resultados_general = $cache->retrieve('General_Settigns');

$file_json_css = ROOT_PATH . '/custom/templates/Mooz/core/settings/styles.json';
$resultados_css_json = file_get_contents($file_json_css);
$resultados_css = json_decode($resultados_css_json, true);

$resultados_style = $resultados_css;
$resultados_anuncio = $cache->retrieve('ANUNCIO_Settigns');
$resultados_footer = $cache->retrieve('FOOTERTEXT_Settigns');
$resultados_carucel = $cache->retrieve('Carucel_Settigns');

$ValehhEsCristiana = $resultados_style['PRIMARY_OP'];
$ValehhEsTestigoDeDios = $resultados_style;
$ValehhEsSatanica = $resultados_general;
$ValehhEsMiAmigaUwU = $resultados_anuncio;
$ValehhEsMiMejorAmigaUwU = $resultados_footer;

$CustomCSSScript = file_get_contents(ROOT_PATH . '/custom/templates/Mooz/core/assets/css/custom.css');


$smarty->assign(array(
	'TOKEN' => Token::get(),
    'CustomCSS' => $CustomCSSScript,
	'PRIMARY_OPTION' => $ValehhEsCristiana,
	'CSS_VALUE' => $ValehhEsTestigoDeDios,
	'GENERAL_VALUE' => $ValehhEsSatanica,
	'ANUNCIO_VALUE' => $ValehhEsMiAmigaUwU,
    'FOOTER' => $ValehhEsMiMejorAmigaUwU,
    'CARU' => $resultados_carucel,
	'MORE_DATOS' => $META_DATOS,
    'SETTINGS_TEMPLATE' => ROOT_PATH . '/custom/templates/Mooz/core/panel/index.tpl',
    'Mz_towk' => $addons['0'],
    'Mz_addons' => $addons,
));

$NLS_PATH = $GLOBALS['conf']['core']['path'];
if (strlen($NLS_PATH) >= '1') {
    $smarty->assign(array(
        'NLS_PATH' => '/'.$GLOBALS['conf']['core']['path'],
    ));
}