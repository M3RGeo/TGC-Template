{include file='header.tpl'}
{include file='navbar.tpl'}
<div class="container">
    
    {if isset($HOME_SESSION_FLASH)}
        <span class="alert alert-success">
            <i class="fa fa-check-circle fa-1x"></i> <b>{$SUCCESS_TITLE}</b>
            <br/>
            {$HOME_SESSION_FLASH}
        </span>
    {/if}
    {if isset($HOME_SESSION_ERROR_FLASH)}
        <span class="alert alert-danger">
            <i class="fa fa-times-circle fa-1x"></i>
            <b>{$ERROR_TITLE}</b>
            <br/>
            {$HOME_SESSION_ERROR_FLASH}
        </span>
    {/if}
    {if ($CARU.ACTIVE == "true")}
        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
            <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="{$CARU.URL1}" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                <h5>{$CARU.TITULO1}</h5>
                <p>{$CARU.DES1}</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="{$CARU.URL2}" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                <h5>{$CARU.TITULO2}</h5>
                <p>{$CARU.DES2}</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="{$CARU.URL3}" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                <h5>{$CARU.TITULO3}</h5>
                <p>{$CARU.DES3}</p>
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
    {/if}
    <div class="row justify-content-center">
        <div class="col-lg-9">
            
            <div id="XemahIsgod">

            </div>
            {if count($NEWS)}
                {foreach from=$NEWS item=item}
                    <div class="card card-news">
                        <div class="card-header">
                            <h2 class="card-title"><a href="{$item.url}">{$item.title}</a></h2>
                        </div>
                        <div class="card-body">
                            <header class="n-user">
                                <div class="container-fluid" style="margin-bottom: 6px;">
                                    <span>
                                        <i class="fa fa-user"></i> <a style="{$item.author_style}" href="{$item.author_url}">{$item.author_name}</a>
                                    </span>
                                    <span data-toggle="tooltip" data-html="true" title="{$item.time_ago} &bull; {$item.date}">
                                        <i class="fa fa-clock"></i>
                                    </span>
                                    <span class="float-right">
                                        <span>
                                            <i class="fa fa-comments"></i> {$item.replies}
                                        </span>
                                        <span>
                                            <i class="fa fa-eye"></i> {$item.views}
                                        </span>
                                    </span>
                                </div>
                            </header>
                            <div class="container">
                                <br />
                                {$item.content}
                            </div>
                        </div>
                        <div class="card-footer">
                            <a class="float-right btn btn-primary" href="{$item.url}" style="font-size: 10px;border-radius: 5px;color: white;font-weight: 600;">
                                <i class="fa fa-sign-in-alt"></i> {$READ_FULL_POST}
                            </a>
                        </div>
                    </div>
                {/foreach}
            {/if}
        </div>
        {if count($WIDGETS)}
            <div class="col-md-4 col-lg-3">
                {foreach from=$WIDGETS item=widget}
                    {$widget}
                {/foreach}
            </div>
        {/if}
    </div>
</div>
{include file='footer.tpl'}