
/**
 *	CHATBOX MODULE
 *	By Xemah | https://xemah.com
 *
**/

function AparecerMensajeID(id) {
	var madresquepedoid = id;
	$(`#MensajeChat-${madresquepedoid} .actions`).toggleClass('d-block', 'd-none')
}


var chatbox = {

	template: `
				<div class="card card-news" id="chatbox">
				<div class="card-header">
					<div class="card-title">
						{chatboxTitle}
					</div>
				</div>
                    <div class="card-body">
                        <div id="chatbox-log">
							`+ chatboxLoading.replace('...', '') +`<span id="loading"></span>
						</div>
						<hr>
						<div class="w-100">
							<form action="" class="disabled" id="chatForm" autocomplete="off">
								<div class="d-flex">
									<input type="text" id="COMENTARIO" class="form-control mr-2" placeholder="{chatboxMessagePlaceholder}" />
									<button type="submit" class="btn btn-primary" id="chatInputSubmit">
										<i class="fa fa-share"></i>
									</button>
									
								</div>
							</form>
						</div>
                    </div>
                </div>
	`,

		itemTemplate: `
				<div id="MensajeChat-{messageId}" onclick="AparecerMensajeID({messageId})">
                    <div class="messagerow" id="estructuramensaje">
                    	<div class="messagecol-1" style=" display: inline-flex; align-items: center; padding: 0 0.2rem 0.2rem 0;">
                        	<div class="image">
                            	<img class="chip-img" loading="lazy" src="{authorAvatar}" style="" srcset="{authorAvatar}">
                            </div>
                            <div class="name">
                            	<a href="{authorProfile}" style="{authorStyle}">{authorUsername} </a>:  
                            </div>
                        </div>
                        {messageContent}
					</div>
					
				<div id="chatMessage-{messageId}" class="actions d-none">
				{messageActions}
			</div>
				</div>
							`,
	
	elements: {
		containerTop: '#XemahIsgod',
		containerBottom: '#XemahIsgod',
		root: '#chatbox',
		log: '#chatbox #chatbox-log',
		form: '#chatbox #chatForm',
		input: '#chatbox #COMENTARIO'
	},

	style: `
		#chatbox {
			margin-bottom: 1.5rem;
		}
		#chatbox #chatForm.disabled {
			opacity: 0.75;
			display: none
		}
		#chatbox #chatForm.disabled * {
			pointer-events: none;
		}
	`

}

