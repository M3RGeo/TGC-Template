{include file='header.tpl'}
{include file='navbar.tpl'}


<div class="container">

	{foreach from=$IFRAME_LIST item=iframe}
	{* <h5 class="text-center" style="margin: 20px;" >{$iframe.name}</h5> *}
	<h5 class="text-center" style="margin: 20px;" ></h5>
	{$iframe.description}
	<div class="embed-responsive embed-responsive-{$iframe.size}">
		<iframe src="{$iframe.src}" frameborder="0"></iframe>
	</div>
	{$iframe.footer_description}
	{/foreach}


</div>


{include file='footer.tpl'}