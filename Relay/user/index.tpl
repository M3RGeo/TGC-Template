{include file='header.tpl'}
{include file='navbar.tpl'}
<div class="container">
    <div class="row">
      <div class="col-lg-3">
        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
            {include file='user/navigation.tpl'}
        </div>
      </div>
      <div class="col">
          <div class="card card-news">
              <div class="card-header">
                  <span class="card-title">
                      {$OVERVIEW}
                  </span>
              </div>
              <div class="card-body">
                  <div class="container">
                      {nocache}
                        {foreach from=$USER_DETAILS_VALUES key=name item=value}
                            <li style="list-style: none">
                                <i class="fa fa-chevron-right"></i>
                                <b>{$name}</b>
                                <small>{$value}</small>
                            </li>
                        {/foreach}
                      {/nocache}
                      {if isset($FORUM_GRAPH)}
                        <div id="chartWrapper">
                            <br />
                            <h5><b>{$FORUM_GRAPH}</b></h5>
                            <canvas id="dataChart" width="100%" height="40"></canvas>
                        </div>
                      {/if}
                  </div>
              </div>
          </div>
      </div>
</div>

{include file='footer.tpl'}