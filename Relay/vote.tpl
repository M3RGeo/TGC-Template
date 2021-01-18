{include file='header.tpl'}
{include file='navbar.tpl'}

<h2 class="ui header">{$VOTE_TITLE}</h2>

<div class="ui stackable grid">
  <div class="ui row">

    {if count($WIDGETS_LEFT)}
        <div class="ui six wide tablet four wide computer column">
            {foreach from=$WIDGETS_LEFT item=widget}
                {$widget}
            {/foreach}
        </div>
    {/if}

    <div class="ui {if count($WIDGETS_LEFT) && count($WIDGETS_RIGHT) }four wide tablet eight wide computer{elseif count($WIDGETS_LEFT) || count($WIDGETS_RIGHT)}ten wide tablet twelve wide computer{else}sixteen wide{/if} column">
      <div class="ui segment">
		{if isset($MESSAGE_ENABLED)}
		  <div class="ui info message">
			<div class="content">
			  {$MESSAGE}
			</div>
		  </div>
		{/if}
		
		<div class="ui grid">
			{foreach from=$SITES item=site}
			  <div class="eight wide column">
				<a class="fluid ui small primary button" href="{$site.url}" target="_blank" role="button"> {$site.name}</a>
			  </div>
			{/foreach}
		</div>
	  </div>
	</div>

    {if count($WIDGETS_RIGHT)}
      <div class="ui six wide tablet four wide computer column">
        {foreach from=$WIDGETS_RIGHT item=widget}
          {$widget}
        {/foreach}
      </div>
    {/if}

  </div>
</div>

{include file='footer.tpl'}