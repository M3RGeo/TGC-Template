// /**
//  *	CHATBOX MODULE
//  *	By Xemah | https://xemah.com
//  *	For Mooz Template
// **/
// var chatbox = {
// 	template: `
// 		<div class="card card-news" id="chatbox" style="border-radius: 5px;">
// 			<div class="card-header">
// 				<span class="card-title">
// 					{chatboxTitle}
// 				</span>
// 			</div>
// 			<div class="card-body mb-2 rounded ">
// 				<div id="ChatMensajes">
// 					{chatboxLoading}
// 				</div>
// 				<div class="col" id="ChatEscribir">
// 					<form action=""  id="chatForm" autocomplete="off">
// 						<div class="input-group">
// 							<div class="custom-file">
// 								<input type="text" id="chatInput" class="form-control" placeholder="{chatboxMessagePlaceholder}">      
// 							</div>
// 							<div class="input-group-append">
// 								<button class="btn btn-primary" type="submit"><i class="fas fa-angle-right"></i></button>
// 							</div>
// 						</div>
// 					</form>
// 				</div>
// 			</div>
// 		</div>
// 	`,

// 	itemTemplate: `		
// 		<div class="d-flex p-2 bd-highlight" id="mensaje-1">
// 			<avatar class="mr-2">
// 				<img src="{authorAvatar}" alt="{authorUsername}">
// 			</avatar>
// 			<div class="align-self-center" >
// 				<div class="d-flex align-items-start">
// 				<a href="{authorProfile}" style="{authorStyle}">{authorUsername}</a> &nbsp; &bull; &nbsp; <span class="text-muted" data-toggle="tooltip" data-html="true" title="{messageTimeFull}">{messageTime}</span>
// 				</div>
// 				<div class="d-flex align-items-end">
// 					{messageContent}
// 				</div>
// 			</div>
// 		</div>
// 	`,
	
// 	elements: {
// 		containerTop: '#XemahIsgod',
// 		containerBottom: '#XemahIsgod',
// 		root: '#chatbox',
// 		log: '#chatbox #ChatMensajes',
// 		form: '#chatbox #ChatEscribir',
// 		input: '#chatbox #chatInput'
// 	},

// 	style: `
// 		#chatbox {
// 			margin-bottom: 1.5rem;
// 		}
// 		#chatbox #chatLog {
// 			height: 250px;
// 			max-width: 100%;
// 			overflow-y: scroll;
// 		}
// 		#chatbox #chatForm.disabled {
// 			opacity: 0.75;
// 		}
// 		#chatbox #chatForm.disabled * {
// 			pointer-events: none;
// 		}
// 	`

// }


/**
 *	CHATBOX MODULE
 *	By Xemah | https://xemah.com
 *
**/

var chatbox = {

	template: `
		<div class="ui segments" id="chatbox">
			<div class="ui padded segment">
				<h2 class="ui dividing header">{chatboxTitle}</h2>
				<div class="ui comments" id="chatLog">
					{chatboxLoading}
				</div>
			</div>
			<div class="ui secondary segment">
				<form action="" class="disabled" id="chatForm" autocomplete="off">
					<div class="ui fluid right action left icon input">
						<i class="comment icon"></i>
						<input type="text" id="chatInput" placeholder="{chatboxMessagePlaceholder}" />
						<button type="submit" class="ui primary icon button" id="chatInputSubmit">
							<i class="share icon"></i>
						</button>
					</div>
				</form>
			</div>
		</div>
	`,

	itemTemplate: `
		<div class="comment" id="chatMessage-{messageId}">
			<a class="avatar">
				<img src="{authorAvatar}">
			</a>
			<div class="content">
				<a class="author" href="{authorProfile}" style="{authorStyle}">{authorUsername}</a>
				<div class="metadata">
					<span class="date" title="{messageTimeFull}">{messageTime}</span>
				</div>
				<div class="text">
					{messageContent}
				</div>
				<div class="actions">
					{messageActions}
				</div>
			</div>
		</div>
	`,
	
	elements: {
		containerTop: '#XemahIsgod',
		containerBottom: '#XemahIsgod',
		root: '#chatbox',
		log: '#chatbox #chatLog',
		form: '#chatbox #chatForm',
		input: '#chatbox #chatInput'
	},

	style: `
		#chatbox {
			margin-bottom: 1.5rem;
		}
		#chatbox #chatLog {
			height: 250px;
			max-width: 100%;
			overflow-y: scroll;
		}
		#chatbox #chatForm.disabled {
			opacity: 0.75;
		}
		#chatbox #chatForm.disabled * {
			pointer-events: none;
		}
	`

}