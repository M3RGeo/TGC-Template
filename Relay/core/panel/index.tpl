<link rel="stylesheet" href="{$NLS_PATH}/custom/templates/Mooz/core/assets/css/material.css" async="">
<link rel="stylesheet" href="{$NLS_PATH}/custom/templates/Mooz/core/assets/css/custom.css" async="">
<link rel="stylesheet" href="{$NLS_PATH}/custom/templates/Mooz/core/assets/css/all.min.css" async="">
<link rel="stylesheet" href="{$NLS_PATH}/custom/templates/Mooz/core/assets/css/styles.php" async="">
<link rel="stylesheet" href="{$NLS_PATH}/custom/templates/Mooz/core/panel/css.php" async="">
<link rel="stylesheet" href="{$NLS_PATH}/core/assets/plugins/switchery/switchery.min.css" async>
<link rel="stylesheet" href="{$NLS_PATH}/core/assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
<link rel="stylesheet" href="{$NLS_PATH}/core/assets/plugins/codemirror/lib/codemirror.css">
    </div>
</div>
<div class="row justify-content-center" id="accordionExample">
    <div class="col-md-3 order-1">
        <div class="card card-news">
            <div class="card-header">
                {$Mz_NAV}
            </div>
            <div class="card-body tab-content"  id="nav-tabContent">
                <div class="nav flex-column nav-pills nav-justified" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                    <a class="rounded nav-item nav-link active" id="General-tab" data-toggle="tab" href="#General" role="tab" aria-controls="General" aria-selected="true">{$Mz_NAVI.0}</a>
                    <a class="rounded nav-item nav-link" id="Styles-tab" data-toggle="tab" href="#Styles" role="tab" aria-controls="Styles" aria-selected="false">{$Mz_NAVI.1}</a>
                    {if ($GENERAL_VALUE.WEB_ANUN gte 1)}
                        <a class="rounded nav-item nav-link" id="Anuncios-tab" data-toggle="tab" href="#Anuncios" role="tab" aria-controls="Anuncios" aria-selected="false">{$Mz_NAVI.2}</a>
                    {/if}
                    <a class="rounded nav-item nav-link" id="Carrucel-tab" data-toggle="tab" href="#Carrucel" role="tab" aria-controls="Carrucel" aria-selected="false">{$Mz_NAVI.3}</a>
                    <a class="rounded nav-item nav-link" id="Carrucel2-tab" data-toggle="tab" href="#Carrucel2" role="tab" aria-controls="Carrucel2" aria-selected="false">{$Mz_NAVI.4}</a>
                    <a class="rounded nav-item nav-link" id="Widgets-tab" data-toggle="tab" href="#Widgets" role="tab" aria-controls="Widgets" aria-selected="false">{$Mz_NAVI.5}</a>
                    
                </div>
            </div>
        </div>
        <div class="card card-news">
            <div class="card-header">
                Interesting links
            </div>
            <div class="card-body centro">
                <a href="https://discord.gg/f3nJdTt" target="_blank" class="btn btn-primary mb-1" style="width: 100%;" rel="noopener noreferrer">NamelesMC Support</a>
                <a href="https://discord.gg/B7pqwu5" target="_blank" class="btn btn-info mb-1" style="width: 100%;" rel="noopener noreferrer">Discord Support</a>
                <a href="https://kenovamc.xyz/" target="_blank" class="btn btn-info mb-1" style="width: 100%;" rel="noopener noreferrer">KenovaMC</a>
                <br>
                <a href="https://magmaz.net/" target="_blank" class="btn" style="width: 100%;" rel="noopener noreferrer"><img src="https://magmaz.net/wp-content/uploads/2020/05/A8eIEdb.png" alt="Magmaz"></a>
            </div>
        </div>
    </div>
    <div class="col order-12 tab-content" id="v-pills-tabContent">
<div class="card card-news">
  <div class="card-body">
      <div class="card-header">
          <span class="card-title centro" style="margin: 0">
              {$MOOZ} Settigns
          </span>
      </div>
      <div class="container">
              <div class="tab-content" id="nav-tabContent">
                  <div class="tab-pane fade show active" id="General" role="tabpanel" aria-labelledby="General-tab">
                      <form action="" method="post">
                        <div class="container-fluid">
                            <div class="form-group row">
                                <label for="webname" class="col-sm-2 col-form-label">Web Name</label>
                                <div class="col-sm-10">
                                  <input type="text" class="form-control" name="webname" id="webname" maxlength="20" value="{$GENERAL_VALUE.WEB_NAME}" placeholder="NamelessMC">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="webDescription" class="col-sm-2 col-form-label">Web Description</label>
                                <div class="col-sm-10">
                                  <input type="text" class="form-control" id="webDescription" name="webDescription" maxlength="100" value="{$GENERAL_VALUE.WEB_DESC}" placeholder="NamelessMC is the best CMS">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="webKeywords" class="col-sm-2 col-form-label">Web Keywords</label>
                                <div class="col-sm-8">
                                  <input type="text" class="form-control" id="webKeywords" name="webKeywords" maxlength="80" value="{$GENERAL_VALUE.WEB_KEYW}" placeholder="NamelessMC, CMS, {$SITE_NAME}">
                                </div>
                                <div class="col-sm-2">
                                    <a href="{$MORE_DATOS}" class="btn btn-primary">Pages Metadata</a>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="webLogo" class="col-sm-2 col-form-label">Logo</label>
                                <div class="col-sm-10">
                                  <input type="text" class="form-control" id="webLogo" name="webLogo" value="{$GENERAL_VALUE.WEB_LOGO}" placeholder="{$NLS_PATH}/custom/templates/Mooz/img/logo.png">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="webBanner" class="col-sm-2 col-form-label">BANNER</label>
                                <div class="col-sm-10">
                                  <input type="text" class="form-control" id="webBanner" name="webBanner" value="{$GENERAL_VALUE.WEB_BANN}" placeholder="{$NLS_PATH}/custom/templates/Mooz/img/banner.png">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md">
                                    <div class="form-group row">
                                        <label class="col-md-3 m-1 p-0 col-form-label">Anuncios</label>
                                        <input type="hidden" name="webanuncio" value="0">
                                        <input name="webanuncio" type="checkbox" class="js-switch js-check-change col p-0" {if ($GENERAL_VALUE.WEB_ANUN gte 1)} checked {/if} value="1" data-switchery="true">
                                    </div>
                                </div>
                                <div class="col-md">
                                    <div class="form-group row">
                                        <label class="col-md-5 m-1 p-0 col-form-label">EMOJI SYSTEM</label>
                                        <input type="hidden" name="webte" value="0">
                                        <input name="webte" type="checkbox" class="js-switch js-check-change col p-0" {if ($GENERAL_VALUE.WEB_TEM gte 1)} checked {/if} value="1" data-switchery="true">
                                    </div>
                                </div>
                                <div class="col-md">
                                    <div class="form-group row">
                                        <label class="col-md-5 m-1 p-0 col-form-label">FUE</label>
                                        <input type="hidden" name="webfue" value="0">
                                        <input name="webfue" type="checkbox" class="js-switch js-check-change col p-0" {if ($GENERAL_VALUE.WEB_FUE gte 1)} checked {/if} value="1" data-switchery="true">
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="container form-group">
                                <input hidden name="token" value="{$TOKEN}">
                                <input hidden name="General" value="yes">
                                <input type="submit" class="btn btn-primary" value="{$SUBMIT}">
                                <a onclick="javascript:history.go(-1)" class="btn btn-danger text-white">{$BACK}</a>
                            </div>
                          </div>
                      </form>   
                  </div>
                  <div class="tab-pane fade" id="Styles" role="tabpanel" aria-labelledby="Styles-tab">
                      <form action="" class="" method="post">
                        <div class="container">
                            <div class="form-group row">
                                <label class="col-md-3 m-1 p-0 col-form-label">
                                    {$Mz_PLANG.STYLE9}
                                </label>
                                <input type="hidden" name="primary-op" value="0">
                                <input name="primary-op" type="checkbox" class="js-switch js-check-change col p-0" {if ($PRIMARY_OPTION >= '1')} checked {/if} value="1" data-switchery="true">
                                
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">PRIMARY 1</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="PRIMARY_1" class="form-control col" value="{$CSS_VALUE.PRIMARY_1}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            {if ($PRIMARY_OPTION >= '1')}
                                <div class="input-group form-group row color-piker">
                                    <label for="nose" class="col-sm-2 col-form-label">PRIMARY 2</label>
                                    <div class="col-sm-10">
                                        <span class="row">
                                            <input type="text" name="PRIMARY_2" class="form-control col" value="{$CSS_VALUE.PRIMARY_2}"/>
                                            <span class="input-group-append col-1 m-0 p-0">
                                                <span class="input-group-text colorpicker-input-addon">
                                                    <i></i>
                                                </span>
                                            </span>
                                        </span>
                                    </div>
                                </div>
                            {/if}
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">SECONDARY</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="SECONDARY" class="form-control col" value="{$CSS_VALUE.SECONDARY}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">LIGHT</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="LIGHT" class="form-control col" value="{$CSS_VALUE.LIGHT}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">DARK</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="DARK" class="form-control col" value="{$CSS_VALUE.DARK}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">SUCCESS</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="SUCCESS" class="form-control col" value="{$CSS_VALUE.SUCCESS}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">INFO</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="INFO" class="form-control col" value="{$CSS_VALUE.INFO}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">WARNING</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="WARNING" class="form-control col" value="{$CSS_VALUE.WARNING}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">DANGER</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="DANGER" class="form-control col" value="{$CSS_VALUE.DANGER}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <hr>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">Body</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="BODY" class="form-control col" value="{$CSS_VALUE.BODY}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="asasdasdas" class="col-sm-2 col-form-label">{$Mz_PLANG.STYLE1}</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text"  id="asasdasdas" name="HICONS" class="form-control col" value="{$CSS_VALUE.HICONS}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">{$Mz_PLANG.STYLE2} 1</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="FONT_1" class="form-control col" value="{$CSS_VALUE.F_1}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">{$Mz_PLANG.STYLE2} 2</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="FONT_2" class="form-control col" value="{$CSS_VALUE.F_2}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">{$Mz_PLANG.STYLE2} 3</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="FONT_3" class="form-control col" value="{$CSS_VALUE.F_3}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">{$Mz_PLANG.STYLE2} 4</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="FONT_4" class="form-control col" value="{$CSS_VALUE.F_4}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">{$Mz_PLANG.STYLE3}</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="CARDB" class="form-control col" value="{$CSS_VALUE.CARD_B}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group row color-piker">
                                <label for="nose" class="col-sm-2 col-form-label">{$Mz_PLANG.STYLE4}</label>
                                <div class="col-sm-10">
                                    <span class="row">
                                        <input type="text" name="CARDF" class="form-control col" value="{$CSS_VALUE.CARD_F}"/>
                                        <span class="input-group-append col-1 m-0 p-0">
                                            <span class="input-group-text colorpicker-input-addon">
                                                <i></i>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="input-group form-group">
                                <label for="nose" class="col-sm-2 col-form-label">{$Mz_PLANG.STYLE5}</label>
                                <input type="text" name="FONT_F" class="form-control col-md" placeholder="@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@100;300;400;500;600;700&display=swap');" value="{$CSS_VALUE.FUENTE}"/>
                            </div>
                            <div class="input-group form-group">
                                <label for="nose" class="col-sm-2 col-form-label">{$Mz_PLANG.STYLE6}</label>
                                <input type="text" name="FONT_F2" class="form-control col-md" placeholder="font-family: 'Montserrat', sans-serif;" value="{$CSS_VALUE.FUENTE2}"/>
                            </div>
                            <div class="input-group form-group">
                                <label for="nose" class="col-sm-2 col-form-label">{$Mz_PLANG.STYLE7}</label>
                                <input type="text" name="FONT_S" class="form-control col-md" placeholder="1rem" value="{$CSS_VALUE.SFUENTE}"/>
                            </div>

                            <br><br>
                            <label for="code" class="col-sm-2 col-form-label">{$Mz_PLANG.STYLE8}</label>
                            <br>
                            <textarea name="customcsss" id="code" cols="30" rows="10">{$CustomCSS}</textarea>
                            <hr>
                            <div class="container form-group">
                                <input hidden name="token" value="{$TOKEN}">
                                <input hidden name="Styles" value="yes">
                                <input type="submit" class="btn btn-primary" value="{$SUBMIT}">
                                <a onclick="javascript:history.go(-1)" class="btn btn-danger text-white">{$BACK}</a>
                            </div>
                          </div>
                      </form>
                  </div>
                  <div class="tab-pane fade" id="Anuncios" role="tabpanel" aria-labelledby="Anuncios-tab">
                      <div class="container">
                        <div style="margin-bottom: 1rem;padding: 1rem;border-radius: 0.5rem; background-color: {$CSS_VALUE.BODY};">
                            <div id="anuncio-main" class="alert alert-{$ANUNCIO_VALUE.TIPO}" style="transition: .5;">
                                <b id="anuncio-titu">{$ANUNCIO_VALUE.TITULO}</b>
                                <p id="anuncio-desc" class="m-0">{$ANUNCIO_VALUE.DESCRI}</p>
                            </div>
                        </div>
                          <form action="" method="post">
                            <div class="form-group row ">
                                <label for="anuncio-main1" class="col-sm-2 col-form-label col-form-label-sm">Soon</label>
                                <div class="col-sm">
                                    <select class="form-control" id="anuncio-main1" name="ANUNCIO_TIPO" onchange="PreviwUpdaterAnuncio()">
                                        <option value="primary" {if ($ANUNCIO_VALUE.TIPO == "primary")} selected {/if}>Primary</option>
                                        <option value="success" {if ($ANUNCIO_VALUE.TIPO == "success")} selected {/if}>Success</option>
                                        <option value="info" {if ($ANUNCIO_VALUE.TIPO == "info")} selected {/if}>Info</option>
                                        <option value="warning" {if ($ANUNCIO_VALUE.TIPO == "warning")} selected {/if}>Warning</option>
                                        <option value="danger" {if ($ANUNCIO_VALUE.TIPO == "danger")} selected {/if}>Danger</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row ">
                                <label for="anuncio-titu2" class="col-sm-2 col-form-label col-form-label-sm">Title</label>
                                <div class="col-sm">
                                    <input type="text" class="form-control" id="anuncio-titu2" value="{$ANUNCIO_VALUE.TITULO}" onchange="PreviwUpdaterAnuncio()" name="ANUNCIO_TITU">
                                </div>
                            </div>
                            <div class="form-group row ">
                                <label for="anuncio-desc3" class="col-sm-2 col-form-label col-form-label-sm">Description</label>
                                <div class="col-sm">
                                    <input type="text" class="form-control" id="anuncio-desc3" value="{$ANUNCIO_VALUE.DESCRI}"  onchange="PreviwUpdaterAnuncio()" name="ANUNCIO_DESC">
                                </div>
                                
                            </div>
                            <hr>
                            
                            <div class="container form-group">
                                <input hidden name="token" value="{$TOKEN}">
                                <input hidden name="Anuncio" value="yes">
                                <input type="submit" class="btn btn-primary" value="{$SUBMIT}">
                                <a onclick="javascript:history.go(-1)" class="btn btn-danger text-white">{$BACK}</a>
                            </div>
                          </form>
                      </div>
                  </div>
                  <div class="tab-pane fade" id="Carrucel" role="tabpanel" aria-labelledby="Carrucel-tab">
                      <form action="" method="post">
                        <div class="container">
                            <div class="form-group row">
                                <label for="FooterText1" class="col-sm-2 col-form-label col-form-label-sm">TITLE 1</label>
                                <div class="col-sm">
                                    <input type="text" class="form-control" name="ftitle1" value="{$FOOTER.TITLE1}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="FooterText1" class="col-sm-2 col-form-label col-form-label-sm">TITLE 2</label>
                                <div class="col-sm">
                                    <input type="text" class="form-control" name="ftitle2" value="{$FOOTER.TITLE2}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="FooterText1" class="col-sm-2 col-form-label col-form-label-sm">TITLE 3</label>
                                <div class="col-sm">
                                    <input type="text" class="form-control" name="ftitle3" value="{$FOOTER.TITLE3}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="FooterText" class="col-sm-2 col-form-label col-form-label-sm">FOOTER TEXT</label>
                                <div class="col-sm">
                                    <textarea name="FooterText" id="FooterText" class="form-control" style="color: inherit;">{$FOOTER.FTEXTO}</textarea>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div class="container form-group">
                          <input hidden name="token" value="{$TOKEN}">
                          <input hidden name="FOOTER" value="yes">
                          <input type="submit" class="btn btn-primary" value="{$SUBMIT}">
                          <a onclick="javascript:history.go(-1)" class="btn btn-danger text-white">{$BACK}</a>
                        </div>
                      </form>
                  </div>
                  <div class="tab-pane fade" id="Carrucel2" role="tabpanel" aria-labelledby="Carrucel2-tab">
                      <div class="container">
                          <br />
                          <form action="" id="carucel" method="post">
                              
                            <span class="row mb-2">
                                <h5>{$Mz_PLANG.previwer}</h5>
                                <br>
                                {if ($CARU.ACTIVE == "true")}
                                    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                                        <ol class="carousel-indicators">
                                        <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                                        <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                                        <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                                        </ol>
                                        <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <img src="{$CARU.URL1}" id="imagen1" class="d-block w-100" alt="...">
                                            <div class="carousel-caption d-none d-md-block">
                                            <h5 id="titulo1">{$CARU.TITULO1}</h5>
                                            <p id="des1">{$CARU.DES1}</p>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <img src="{$CARU.URL2}" id="imagen2" class="d-block w-100" alt="...">
                                            <div class="carousel-caption d-none d-md-block">
                                            <h5 id="titulo2">{$CARU.TITULO2}</h5>
                                            <p id="des2">{$CARU.DES2}</p>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <img src="{$CARU.URL3}" id="imagen3" class="d-block w-100" alt="...">
                                            <div class="carousel-caption d-none d-md-block">
                                            <h5 id="titulo3">{$CARU.TITULO3}</h5>
                                            <p id="des3">{$CARU.DES3}</p>
                                            </div>
                                        </div>
                                        </div>
                                        <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Previous</span>
                                        </a>
                                        <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Next</span>
                                        </a>
                                    </div>
                                {else}
                                    <span class="alert alert-danger" style="width: 100% !important;">
                                        {$Mz_PLANG.MNACTIVO}
                                    </span>
                                {/if}
                            </span>

                            <span class="row mb-2">
                                <span class="col-4">
                                    <span class="from-label" style="display: flex;height: 100%;place-items: center;">
                                      <label for="carrucelyesno" style="display: flex;margin: 0;">{$Mz_PLANG.ABILII}</label>  
                                    </span>
                                </span>
                                <span class="col-8">
                                    <select class=" form-control" id="carrucelyesno" name="carrucelyesno" onchange="enviarcarrucel()">
                                        <option value="true" {if ($CARU.ACTIVE eq "true")} selected {/if}>{$Mz_PLANG.YES}</option>
                                        <option value="false" {if ($CARU.ACTIVE eq "false")} selected {/if}>{$Mz_PLANG.NO}</option>
                                    </select>
                                </span>
                            </span>
                            <br />
                            <span class="row mb-2  {if ($CARU.ACTIVE != "true")}d-none{/if}">
                                <span class="col-4">
                                    <span class="from-label" style="display: flex;height: 100%;place-items: center;">
                                      <label for="CarrocelURL1" style="display: flex;margin: 0;">{$Mz_PLANG.URL} 1</label>  
                                    </span>
                                </span>
                                <span class="col-8">
                                  <input type="text" name="url1" id="CarrocelURL1" class="form-control" onchange="PreviwUpdater()" value="{$CARU.URL1}">
                                </span>
                                <br>
                                <br>
                                <span class="col-4">
                                    <span class="from-label" style="display: flex;height: 100%;place-items: center;">
                                      <label for="CarrocelT1" style="display: flex;margin: 0;">{$Mz_PLANG.TITULO} 1</label>  
                                    </span>
                                </span>
                                <span class="col-8">
                                  <input type="text" name="titulo1" id="CarrocelT1" class="form-control" onchange="PreviwUpdater()" value="{$CARU.TITULO1}">
                                </span>
                                <br>
                                <br>
                                <span class="col-4">
                                    <span class="from-label" style="display: flex;height: 100%;place-items: center;">
                                      <label for="CarrocelD1" style="display: flex;margin: 0;">{$Mz_PLANG.DESC} 1</label>  
                                    </span>
                                </span>
                                <span class="col-8">
                                  <input type="text" id="CarrocelD1" name="DES1" class="form-control" onchange="PreviwUpdater()" value="{$CARU.DES1}">
                                </span>
                            </span>
                            <br />
                            <span class="row mb-2 {if ($CARU.ACTIVE != "true")}d-none{/if}">
                                <span class="col-4">
                                    <span class="from-label" style="display: flex;height: 100%;place-items: center;">
                                      <label for="CarrocelURL1" style="display: flex;margin: 0;">{$Mz_PLANG.URL} 2</label>  
                                    </span>
                                </span>
                                <span class="col-8">
                                  <input type="text"  name="url2" id="CarrocelURL2" class="form-control" onchange="PreviwUpdater()" value="{$CARU.URL2}">
                                </span>
                                <br>
                                <br>
                                <span class="col-4">
                                    <span class="from-label" style="display: flex;height: 100%;place-items: center;">
                                      <label for="CarrocelT2" style="display: flex;margin: 0;">{$Mz_PLANG.TITULO} 2</label>  
                                    </span>
                                </span>
                                <span class="col-8">
                                  <input type="text" name="titulo2" id="CarrocelT2" class="form-control" onchange="PreviwUpdater()" value="{$CARU.TITULO2}">
                                </span>
                                <br>
                                <br>
                                <span class="col-4">
                                    <span class="from-label" style="display: flex;height: 100%;place-items: center;">
                                      <label for="CarrocelD2" style="display: flex;margin: 0;">{$Mz_PLANG.DESC} 2</label>  
                                    </span>
                                </span>
                                <span class="col-8">
                                  <input type="text" id="CarrocelD2" name="DES2" class="form-control" onchange="PreviwUpdater()" value="{$CARU.DES2}">
                                </span>
                            </span>
                            <br />
                            <span class="row mb-2 {if ($CARU.ACTIVE != "true")}d-none{/if}">
                                <span class="col-4">
                                    <span class="from-label" style="display: flex;height: 100%;place-items: center;">
                                      <label for="CarrocelURL3" style="display: flex;margin: 0;">{$Mz_PLANG.URL} 3</label>  
                                    </span>
                                </span>
                                <span class="col-8">
                                  <input type="text" name="url3" id="CarrocelURL3" class="form-control" onchange="PreviwUpdater()" value="{$CARU.URL3}">
                                </span>
                                <br>
                                <br>
                                <span class="col-4">
                                    <span class="from-label" style="display: flex;height: 100%;place-items: center;">
                                      <label for="CarrocelT3" style="display: flex;margin: 0;">{$Mz_PLANG.TITULO} 3</label>  
                                    </span>
                                </span>
                                <span class="col-8">
                                  <input type="text" name="titulo3" id="CarrocelT3" class="form-control" onchange="PreviwUpdater()" value="{$CARU.TITULO3}">
                                </span>
                                <br>
                                <br>
                                <span class="col-4">
                                    <span class="from-label" style="display: flex;height: 100%;place-items: center;">
                                      <label for="CarrocelD3" style="display: flex;margin: 0;">{$Mz_PLANG.DESC} 3</label>  
                                    </span>
                                </span>
                                <span class="col-8">
                                  <input type="text" id="CarrocelD3" name="DES3" class="form-control" onchange="PreviwUpdater()" value="{$CARU.DES3}">
                                </span>
                            </span>
                            <input hidden name="token" value="{$TOKEN}">
                            <input hidden name="carucel" value="yes">

                          </form>
                          <a href="#" onclick="enviarcarrucel()" class="btn btn-primary">{$Mz_PLANG.SEND}</a>
                      </div>
                  </div>
                  <div class="tab-pane fade " id="Widgets" role="tabpanel" aria-labelledby="Widgets-tab">
                    <form action="" method="post">
                      <div class="container-fluid">
                          
                        <div class="row">
                            <div class="col-md">
                                <div class="form-group row">
                                    <label class="col-md-3 m-1 p-0 col-form-label" data-toggle="tooltip" title="Tickets addons">{$Mz_PLANG.TAWK}</label>
                                    <input type="hidden" name="ENABLETOWK" value="0">
                                    <input name="ENABLETOWK" type="checkbox" class="js-switch js-check-change col p-0" {if ($Mz_towk gte 1)} checked {/if} value="1" data-switchery="true">
                                </div>
                            </div>
                            <div class="col-md">
                                <div class="form-group row">
                                    <label class="col-md-3 m-1 p-0 col-form-label">{$Mz_PLANG.DWidgetBot}</label>
                                    <input type="hidden" name="DIS" value="0">
                                    
                                    <input name="DIS" type="checkbox" class="js-switch js-check-change col p-0" {if ($Mz_addons.2 gte "1")} checked {/if} value="1" data-switchery="true">
                                </div>
                            </div>
                            <div class="col-md">
                                <div class="form-group row">
                                    <label class="col-md-3 m-1 p-0 col-form-label">{$Mz_PLANG.UPTOP}</label>
                                    <input type="hidden" name="UPTOP" value="0">
                                    <input name="UPTOP" type="checkbox" class="js-switch js-check-change col p-0" {if ($Mz_addons.5 gte 1)} checked {/if} value="1" data-switchery="true">
                                </div>
                            </div>
                        </div>

                          <div class="form-group row">
                              <label for="TOWKID" class="col-sm-2 col-form-label">ID TAWK</label>
                              <div class="col-8">
                                <input type="text" class="form-control" name="TOWKID" id="TOWKID" maxlength="200" value="{$Mz_addons.1}" placeholder="5d1ba6847a48df6da2429e3c/1drbk0osg">
                              </div>
                              <span class="col">
                                  <a href="https://dashboard.tawk.to/" class="btn btn-primary">Tawk panel</a>
                              </span>
                          </div>
                          <hr>
                          <div class="form-group row">
                              <label for="DISID" class="col-sm-2 col-form-label">DISCORD SERVER ID</label>
                              <div class="col-sm-10">
                                <input type="text" class="form-control" id="DISID" name="DISID" maxlength="100" value="{$Mz_addons.3}" placeholder="465225722441498634">
                              </div>
                          </div>
                          <div class="form-group row">
                              <label for="DISID" class="col-sm-2 col-form-label">DISCORD CHANNEL ID</label>
                              <div class="col-sm-10">
                                <input type="text" class="form-control" id="DISCID" name="DISCID" maxlength="100" value="{$Mz_addons.4}" placeholder="735231799252484138">
                              </div>
                          </div>
                          <div class="form-group row">
                              <label for="DISP" class="col-sm-2 col-form-label">DISCORD WIDGET POSITION</label>
                              <div class="col-sm-10">
                                <span class="row">
                                    <div class="col">
                                        <select name="DISP1" id="DISP" class="form-control">
                                            <option value="top"  {if ($Mz_addons.6 == "top")} selected {/if}>{$Mz_PLANG.TOP}</option>
                                            <option value="center" {if ($Mz_addons.6 == "center")} selected {/if}>{$Mz_PLANG.CENTER}</option>
                                            <option value="bottom" {if ($Mz_addons.6 == "bottom")} selected {/if}>{$Mz_PLANG.BOTTOM}</option>
                                        </select>
                                    </div>
                                    <div class="col">
                                        <select name="DISP2" id="DISP" class="form-control">
                                            <option value="right" {if ($Mz_addons.7 == "right")} selected {/if}>{$Mz_PLANG.RIGHT}</option>
                                            <option value="left" {if ($Mz_addons.7 == "left")} selected {/if}>{$Mz_PLANG.LEFT}</option>
                                        </select>
                                    </div>
                                </span>
                              </div>
                          </div>
                          
                          <hr>
                          <div class="badge badge-danger" style="width: 100%;">
                            Refresh the page or clear the cache if the changes are not noticed
                          </div>
                          <br>
                          <br>
                          <div class="container form-group">
                              <input hidden name="token" value="{$TOKEN}">
                              <input hidden name="widgets" value="yes">
                              <input type="submit" class="btn btn-primary" value="{$SUBMIT}">
                              <a onclick="javascript:history.go(-1)" class="btn btn-danger text-white">{$BACK}</a>
                          </div>
                        </div>
                    </form>   
                </div>
              </div>
      </div>
  </div>
</div>
    </div>
</div>
<div>
    <div>
        <script type="text/javascript" src="{$NLS_PATH}/custom/panel_templates/Default/assets/plugins/jquery/jquery.min.js" defer></script>
        <script type="text/javascript" src="{$NLS_PATH}/custom/templates/Mooz/core/assets/js/popper.min.js" defer></script> 
        <script src="{$NLS_PATH}/custom/templates/Mooz/core/assets/js/bootstrap.min.js" defer></script>
        <script  src="{$NLS_PATH}/custom/panel_templates/Default/assets/plugins/bootstrap/js/bootstrap.bundle.min.js" defer></script>
        <script src="{$NLS_PATH}/custom/templates/Mooz/core/assets/js/material.js"></script>
        <script src="{$NLS_PATH}/core/assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js" defer></script>
        <script type="text/javascript" src="{$NLS_PATH}/custom/templates/Mooz/core/assets/js/panel.js" defer></script> 
        <script type="text/javascript" src="{$NLS_PATH}/core/assets/plugins/switchery/switchery.min.js"></script>
        <script src="{$NLS_PATH}/core/assets/plugins/codemirror/lib/codemirror.js"></script>
        <script src="{$NLS_PATH}/core/assets/plugins/codemirror/mode/css/css.js"></script>
        {literal}
            <script type="text/javascript">
                var elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));

                elems.forEach(function(html) {
                var switchery = new Switchery(html, {color: '#23923d', secondaryColor: '#e56464'});
                });
                function PreviwUpdater() {
                    var valor1 = document.getElementById('CarrocelURL1').value;
                    var valor2 = document.getElementById('CarrocelURL2').value;
                    var valor3 = document.getElementById('CarrocelURL3').value;

                    var titulo1 = document.getElementById('CarrocelT1').value;
                    var titulo2 = document.getElementById('CarrocelT2').value;
                    var titulo3 = document.getElementById('CarrocelT3').value;
                    
                    var des1 = document.getElementById('CarrocelD1').value;
                    var des2 = document.getElementById('CarrocelD2').value;
                    var des3 = document.getElementById('CarrocelD3').value;
                    try {
                        $('#imagen1').attr('src', valor1);
                        $('#imagen2').attr('src', valor2);
                        $('#imagen3').attr('src', valor3);
                        
                        $('#titulo1').text(titulo1);
                        $('#titulo2').text(titulo2);
                        $('#titulo3').text(titulo3);
                        
                        $('#des1').text(des1);
                        $('#des2').text(des2);
                        $('#des3').text(des3);
                    } catch (error) {
                        console.error(error);
                    }
                    console.log(valor1 + valor2 + valor3);
                }
                function PreviwUpdaterAnuncio(){
                    var valor1 = document.querySelector("#anuncio-main1").value;
                    var valor2 = document.querySelector('#anuncio-titu2').value;
                    var valor3 = document.querySelector('#anuncio-desc3').value;
                    
                    try {
                        $('#anuncio-main').attr('class', 'alert alert-' + valor1);
                        $('#anuncio-titu').text(valor2);
                        $('#anuncio-desc').text(valor3);
                    } catch (error) {
                        console.error(error);
                    }
                    console.log(valor1 + valor2 + valor3);
                }
                function enviarcarrucel() {
                    $('form#carucel').submit();
                }
                
    var editor = CodeMirror.fromTextArea(document.getElementById("code"), {
        lineNumbers: false,
        mode: "css"
    });
    editor.setSize(null, 200);
            </script>
        {/literal}