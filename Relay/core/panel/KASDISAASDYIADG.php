<?php
    
$NavItem = array(
    $MzLang->get('panel', 'NAV.1'), 
    $MzLang->get('panel', 'NAV.2'), 
    $MzLang->get('panel', 'NAV.3'), 
    $MzLang->get('panel', 'NAV.4'), 
    $MzLang->get('panel', 'NAV.5'), 
    $MzLang->get('panel', 'NAV.6'), 
    $MzLang->get('panel', 'NAV.7'), 
);   
$resultados_footer = $cache->retrieve('FOOTERTEXT_Settigns');
$FOOTER = array(
    $resultados_footer['TITLE1'], 
    $resultados_footer['TITLE2'], 
    $resultados_footer['TITLE3'], 
);
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


$LenguajeDelPanel = array(
    'YES' => $MzLang->get('panel', 'Si'),
    'NO' => $MzLang->get('panel', 'No'),
    'MNACTIVO' => $MzLang->get('panel', 'ModuloNoActivo'),  
    'URL' => $MzLang->get('panel', 'URL_IMG'),  
    'TITULO' => $MzLang->get('panel', 'TITULO_IMG'),  
    'DESC' => $MzLang->get('panel', 'DESC_IMG'),  
    'SEND' => $MzLang->get('panel', 'Enviar'),  
    'previwer' => $MzLang->get('panel', 'previwer'),
    'ABILII' => $MzLang->get('panel', 'ABILII'),


    'TOP' => $MzLang->get('panel', 'top'),
    'BOTTOM' => $MzLang->get('panel', 'bottom'),
    'RIGHT' => $MzLang->get('panel', 'right'),
    'LEFT' => $MzLang->get('panel', 'left'),
    'CENTER' => $MzLang->get('panel', 'center'),

    'DWidgetBot' => $MzLang->get('panel', 'DWidgetBot'),
    'TAWK' => $MzLang->get('panel', 'TAWK'),
    'UPTOP' => $MzLang->get('panel', 'UPTOP'),

    'STYLE1' => $MzLang->get('panel', 'Stilo1'),
    'STYLE2' => $MzLang->get('panel', 'Stilo2'),
    'STYLE3' => $MzLang->get('panel', 'Stilo3'),
    'STYLE4' => $MzLang->get('panel', 'Stilo4'),
    'STYLE5' => $MzLang->get('panel', 'Stilo5'),
    'STYLE6' => $MzLang->get('panel', 'Stilo6'),
    'STYLE7' => $MzLang->get('panel', 'Stilo7'),
    'STYLE8' => $MzLang->get('panel', 'Stilo8'),
    'STYLE9' => $MzLang->get('panel', 'Stilo9'),
    'STYLE10' => $MzLang->get('panel', 'Stilo10'),
    'STYLE11' => $MzLang->get('panel', 'Stilo11'),


);

$smarty->assign(array(
    'MOOZ' => $MzLang->get('panel', 'Mooz'),
    'Mz_NAV' => $MzLang->get('panel', 'NAV'),
    'Mz_NAVI' => $NavItem,
    'Mz_PLANG' => $LenguajeDelPanel,
    'Mz_towk' => $addons['0'],
    'Mz_addons' => $addons,
));