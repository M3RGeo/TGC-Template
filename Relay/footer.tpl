</main>
{if isset($GLOBAL_WARNING_TITLE)}
    <div class="modal-open modal fade show" id="modal-acknowledge" tabindex="-1" role="dialog" aria-labelledby="modal-acknowledge" aria-modal="true" style="padding-right: 10px; display: block;">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">{$GLOBAL_WARNING_TITLE}</h5>
                </div>
                <div class="modal-body">
                    <p>{$GLOBAL_WARNING_REASON}</p>
                </div>
                <div class="modal-footer">
                    <a href="{$GLOBAL_WARNING_ACKNOWLEDGE_LINK}" class="btn btn-secondary">{$GLOBAL_WARNING_ACKNOWLEDGE}</a>
                </div>
            </div>
        </div>
    </div>
    <div class="modal-backdrop fade show"></div>
{/if}

<div id="root"></div>
  
    {if isset($NEW_UPDATE) && ($NEW_UPDATE_URGENT != true)}
        <script src="{$TEMPLATE.path}/js/core/update.js"></script>
    {/if}
<span class="ir-arriba fa fa-angle-up fa-fw {if ($Mz_addons.5 gte "0")} d-none {/if}"></span>
</main>
        <footer>
            <div class="footer">
                <div class="row">
                    <div class="col">
                        <h1>{$MZ_LANG.0}</h1>
                        <p>
                            {$MZ_FS.FTEXTO}
                        </p>
                    </div>
                    <div class="col  d-none d-sm-none d-md-block">
                        <h1>{$MZ_LANG.1}</h1>
                        <p>
                            {foreach from=$FOOTER_NAVIGATION key=name item=item}
                                {if isset($item.items)}
                                    {* Dropup *}
                                    <li class="nav-item">
                                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                                            {$item.icon} {$item.title}
                                        </a>
                                        <div class="dropdown-menu">
                                            {foreach from=$item.items item=dropdown}
                                                <a class="dropdown-item" href="{$dropdown.link}" target="{$dropdown.target}">
                                                    {$dropdown.icon} {$dropdown.title}
                                                </a>
                                            {/foreach}
					                    </div>
                                    </li>
                                {else}
                                    {* Normal link *}
                                    <li class="nav-link" style="padding: 4px 1rem;">
                                        <a class="nav-item" href="{$item.link}">{$item.title}</a>
                                    </li>
                                {/if}
                            {/foreach}
                            <li class="nav-link" style="padding: 4px 1rem;">
                                <a class="nav-item" href="{$TERMS_LINK}">{$TERMS_TEXT}</a>
                            </li>
                            <li class="nav-link" style="padding: 4px 1rem;">
                                <a class="nav-item" href="{$PRIVACY_LINK}">{$PRIVACY_TEXT}</a> 
                            </li>
                        </p>
                    </div>
                    <div class="col">
                        <h1>{$MZ_LANG.2}</h1>
                        <p>
                            {foreach from=$SOCIAL_MEDIA_ICONS item=icon}
                                <a href="{$icon.link}"><i class="{if $icon.long neq 'envelope'}fab{else}fas{/if} fa-{$icon.long}-square fa-3x blanco"></i></a>
                            {/foreach}
                        </p>
                    </div>
                    <div class="col-12">
                        <div class="container">
                            <span class="float-left">
                                {if $PAGE_LOAD_TIME}
                                    <a data-toggle="tooltip" id="page_load"></a>
                                {else}
                                    Powered By <a href="https://namelessmc.com/">NamelessMC</a>
                                {/if}
                            </span>
                            <span class="float-right">
                                Mooz Template By <a href="https://LaboratorioMC.com.ve"><strong><samp style="font: caption; font-size: 0.8rem;">CubericoStudios</samp></strong></a>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        {foreach from=$TEMPLATE_JS item=script}
            {$script}
        {/foreach}
        {foreach from=$fspeedjs item=scripts}
            {$scripts}
        {/foreach}
        
        {if isset($MAINTENANCE_ENABLED)}
            <script type="text/javascript">toastr.error(Mantenimiento)</script>
        {/if}
        {if ($smarty.const.PAGE == "members")}
            {literal}
                <script>
                    $.extend( true, $.fn.dataTable.defaults, {
                        "searching": true,
                        "lengthChange": false,
                        "info": false,
                        "ordering": true
                    });
	                $(document).ready(function() {
		                $('#tablaprro').dataTable({
    			            responsive: true,
			                language: {
				                "lengthMenu": "Display _MENU_ records per page",
				                "zeroRecords": "No results found",
				                "info": "Showing page _PAGE_ of _PAGES_",
				                "infoEmpty": "No records available",
				                "infoFiltered": "(filtered from _MAX_ total records)",
				                "search": "Search ",
				                "paginate": {
					                "next": "Next",
					                "previous": "Previous"
				                }
			                }
		                });
	                });
                </script>
            {/literal}
        {/if}
        {if ($Mz_towk gte 1)}
        <!--Start of Tawk.to Script-->
            <script type="text/javascript">
                var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
                (function(){
                var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
                s1.async=true;
                s1.src='https://embed.tawk.to/{$Mz_addons.1}';
                s1.charset='UTF-8';
                s1.setAttribute('crossorigin','*');
                s0.parentNode.insertBefore(s1,s0);
                })();
            </script>
                <!--End of Tawk.to Script-->
        {/if}
        {if ($Mz_addons.2 gte "1")}
        <script src="https://cdn.jsdelivr.net/npm/@widgetbot/crate@3" async defer>
            const crate = new Crate({
              server: '{$Mz_addons.3}',
              channel: '{$Mz_addons.4}',
              location: ['{$Mz_addons.6}', '{$Mz_addons.7}']
            })
            
            //crate.notify('Hi NamelessMC')
          </script>
        {/if}
    {foreach from=$PARTICLESJS item=PJS}{$PJS}{/foreach}

</body>
</html>