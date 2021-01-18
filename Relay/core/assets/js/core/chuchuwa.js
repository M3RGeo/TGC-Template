function URLBuild(t){return siteURL+t}function redirect(t){window.location.href=t}function copy(t){var o=$("<input>");$("body").append(o),o.val($(t).text()).select(),document.execCommand("copy"),o.remove(),toastr.success(copied)}toastr.options={progressBar:!0,closeButton:!0,timeOut:0,extendedTimeOut:0,positionClass:"toast-bottom-left"},$(function(){""!==loadingTime&&($("#page_load").html(loadingTime),$("#Page_load2").text(loadingTime))});

function mostrarclave(){
    var tipo = document.getElementById("password");
    if(tipo.type == "password"){
        tipo.type = "text";
    }else{
        tipo.type = "password";
    }
}

if (page !== '') {
	
	if (page === 'status') {
		$(function() {
			$(".server").each(function() {
				let serverID = $(this).data("id");
				let serverBungee = $(this).data("bungee");
				let serverPlayerList = $(this).data("players");
				let serverElem = '#server' + serverID + '[data-id=' + serverID + ']';
				let estado = '#estadoserver' + serverID;
				
				$.getJSON(URLBuild('queries/server/?id=' + serverID), function(data){
					var content = '';
					var players = '';
					if (data.status_value === 1) {
						$(serverElem).addClass("green");
						$(estado).removeClass("text-info");
						$(estado).addClass("text-success");
						content = data.player_count + "/" + data.player_count_max;
						if (serverBungee === 1) {
							players = bungeeInstance;
						} else {
							if (serverPlayerList === 1) {
								if (data.player_list.length > 0) {
									for (var i = 0; i < data.player_list.length; i++) {
										players += '<a href="' + URLBuild('profile/' + data.player_list[i].name) + '" data-tooltip="' + data.player_list[i].name + '" data-variation="mini" data-inverted="" data-position="bottom center"><img class="ui mini circular image" src="' + avatarSource.replace('{x}', data.player_list[i].id).replace('{y}', 64) + '" alt="' + data.player_list[i].name + '"></a>';
									}
								
									if(data.player_list.length < data.player_count) {
										players += '<span class="ui blue circular label">+' + (data.player_count - data.player_list.length) + '</span>';
									}
									
								} else {
									players += noPlayersOnline;
								}
							}
						}
					} else {
						$(serverElem).addClass("red");
						$(estado).removeClass("text-info");
						$(estado).addClass("text-danger");
						content = offline;
						players = noPlayersOnline;
					}
										
					$(serverElem).find('#server-status').html(content);
					$(serverElem).find('#server-players').html(players);
				});
			});
		});
	} else if (page === 'profile') {
        $("#comentarios-fb").emojioneArea({
                hideSource: true,
                search            : true,
                placeholder       : null,
                emojiPlaceholder  : ":smiley:",
                hideSource        : true,
                shortnames        : true,
                sprite            : true,
                pickerPosition    : "top", // top | bottom | right
                filtersPosition   : "bottom", // top | bottom
                searchPosition    : "top", // top | bottom
                hidePickerOnBlur  : true,
                buttonTitle       : "Pulse tab",
                tones             : false,
                saveEmojisAs      : "unicode", // unicode | shortname | image
                shortcuts         : true,
                autocomplete      : true,
                autocompleteTones : false,
                standalone        : false,
                useInternalCDN    : true, // Use the self loading mechanism
                recentEmojis      : true,
                events: {
                    keyup: function (editor, event) {
                        console.log(editor.html());
                        console.log(this.getText());
                    }
                }
            });
            $('INPUT[type="text"]').emojioneArea({
                hideSource: true,
                search            : true,
                placeholder       : null,
                emojiPlaceholder  : ":smiley:",
                hideSource        : true,
                shortnames        : true,
                sprite            : true,
                pickerPosition    : "top", // top | bottom | right
                filtersPosition   : "bottom", // top | bottom
                searchPosition    : "top", // top | bottom
                hidePickerOnBlur  : true,
                buttonTitle       : "Pulse tab",
                tones             : false,
                saveEmojisAs      : "unicode", // unicode | shortname | image
                shortcuts         : true,
                autocomplete      : true,
                autocompleteTones : false,
                standalone        : false,
                useInternalCDN    : true, // Use the self loading mechanism
                recentEmojis      : true,
                events: {
                    keyup: function (editor, event) {
                        console.log(editor.html());
                        console.log(this.getText());
                    }
                }
            });
		function showBannerSelect(){
			$('#imageModal').modal({
				onVisible: function() {
					$("select").imagepicker();
				}
			}).modal('show');
		}
	} else if (page === 'cc_messaging') {
        $("#COMENTARIOS").emojioneArea({
                hideSource: true,
                search            : true,
                placeholder       : null,
                emojiPlaceholder  : ":smiley:",
                hideSource        : true,
                shortnames        : true,
                sprite            : true,
                pickerPosition    : "top", // top | bottom | right
                filtersPosition   : "bottom", // top | bottom
                searchPosition    : "top", // top | bottom
                hidePickerOnBlur  : true,
                buttonTitle       : "Pulse tab",
                tones             : false,
                saveEmojisAs      : "unicode", // unicode | shortname | image
                shortcuts         : true,
                autocomplete      : true,
                autocompleteTones : false,
                standalone        : false,
                useInternalCDN    : true, // Use the self loading mechanism
                recentEmojis      : true,
                events: {
                    keyup: function (editor, event) {
                        console.log(editor.html());
                        console.log(this.getText());
                    }
                }
            });
	}
	
	else if (route.indexOf("/forum/topic/") != -1) {
		$(function() {
			var postId = window.location.hash.replace('#post-', '');
			var postElem = '#topic-post[post-id=\'' + postId + '\']';
			setTimeout(function(){
			   $('html, body').animate(
                   {
                       scrollTop: $(postElem).offset().top-15
                   }, 1800);
			}, 100);
			$('.card.card-news', postElem).delay(600).effect("highlight", {}, 800);
            console.clear();
		});
	}
}


$(document).ready(function() {
    console.log('Este sitio web esta usando Mooz template Creando por zJerino');
});
if (1 == loggedIn) {
    var countPms = 0
      , countAlerts = 0;
    function updateAlerts(e) {
        if (e.value > 0) {
            $("#button-alerts").removeClass("nada").addClass("animacion0003");
            var t = "";
            for (var i in e.alerts)
                t += '<a class="dropdown-item" href="' + URLBuild("user/alerts/?view=" + e.alerts[i].id) + '">' + e.alerts[i].content_short + "</a>";
            $("#list-alerts").html(t)
        } else
            $("#list-alerts").html('<a class="dropdown-item">' + noAlerts + "</a>");
        countAlerts = e.value
    }
    function notifyAlerts(e) {
        if (e.value > 0) {
            if (1 == e.value ? (toastr.options.onclick = function() {
                redirect(URLBuild("user/alerts"))
            }
            ,
            toastr.info(newAlert1)) : (toastr.options.onclick = function() {
                redirect(URLBuild("user/alerts"))
            }
            ,
            toastr.info(newAlertsX.replace("{x}", e.value))),
            "granted" !== Notification.permission)
                Notification.requestPermission();
            else {
                if (1 == e.value)
                    var t = new Notification(siteName,{
                        body: newAlert1
                    });
                else
                    t = new Notification(siteName,{
                        body: newAlertsX.replace("{x}", e.value)
                    });
                t.onclick = function() {
                    window.open(URLBuild("user/alerts"))
                }
            }
            countAlerts = e.value
        }
    }
    function updatePMs(e) {
        if (e.value > 0) {
            $("#button-pms").removeClass("nada").addClass("animacion0003");
            var t = "";
            for (var i in e.pms)
                t += '<a class="dropdown-item" href="' + URLBuild("user/messaging/?action=view&amp;message=" + e.pms[i].id) + '">' + e.pms[i].title + "</a>";
            $("#list-pms").html(t)
        } else
            $("#list-pms").html('<a class="dropdown-item">' + noMessages + "</a>");
        countPms = e.value
    }
    function notifyPMs(e) {
        if (e.value > 0) {
            if (1 == e.value ? (toastr.options.onclick = function() {
                redirect(URLBuild("user/messaging"))
            }
            ,
            toastr.info(newMessage1)) : (toastr.options.onclick = function() {
                redirect(URLBuild("user/messaging"))
            }
            ,
            toastr.info(newMessagesX.replace("{x}", e.value))),
            "granted" !== Notification.permission)
                Notification.requestPermission();
            else {
                if (1 == e.value)
                    var t = new Notification(siteName,{
                        body: newMessage1
                    });
                else
                    t = new Notification(siteName,{
                        body: newMessagesX.replace("{x}", e.value)
                    });
                t.onclick = function() {
                    window.open(URLBuild("user/messaging"))
                }
            }
            countPms = e.value
        }
    }
    $(document).ready(function() {
        Notification && "granted" !== Notification.permission && Notification.requestPermission(),
        $.getJSON(URLBuild("queries/alerts"), function(e) {
            updateAlerts(e)
        }),
        $.getJSON(URLBuild("queries/pms"), function(e) {
            updatePMs(e)
        }),
        window.setInterval(function() {
            $.getJSON(URLBuild("queries/alerts"), function(e) {
                countAlerts < e.value && notifyAlerts(e),
                updateAlerts(e)
            }),
            $.getJSON(URLBuild("queries/pms"), function(e) {
                countPms < e.value && notifyPMs(e),
                updatePMs(e)
            })
        }, 1e5)
    })
} else
    "1" == cookie && toastr.info(cookieNotice);
$(function() {
    var e = {};
    $("*[data-poload]").mouseenter(function() {
        var t = this;
        $.get($(t).data("poload"), function(i) {
            debugging && console.log('Limpiando Consola');
            console.clear();
            console.log('Xemah Is god');
            var o = JSON.parse(i);
            e[$(t).data("poload")] = o;
            var s = document.createElement("div");
            s.innerHTML = o.html;
            var a = s.getElementsByTagName("img")[0];
            (new Image).src = a.src
        })
    }),
    $("*[data-poload]").popup({
        hoverable: !0,
        variation: "special flowing",
        transition: 'slide down',
        html: "...",
        delay: {
            show: 500,
            hide: 200
        },
        onShow: function(t) {
            this.html(e[$(t).data("poload")].html)
        }
    })
});


function loadingspan3() {
	$("#loading").text('...');
	setTimeout(() => {
		loadingspan1();
	}, 500);
}
function loadingspan2() {
	$("#loading").text('..');
	setTimeout(() => {
		loadingspan3();
	}, 500);
}
function loadingspan1() {
	$("#loading").text('.');
	setTimeout(() => {
		loadingspan2();
	}, 500);
}

loadingspan1();
	
setInterval(() => {
	if(twemoji){
		twemoji.parse(document.body);
	}
}, 500);