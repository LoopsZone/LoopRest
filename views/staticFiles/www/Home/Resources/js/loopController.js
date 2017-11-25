var url = "http://rest.loopszone:8080"; //Rest API

function modal(id, content) {
    if ($("#" + id).length == 0) {
        $('body').append('<div id="' + id + '" class="modal" ></div>');
        $.ajax({
            url: content,
            success: function (data) {
                $('#' + id).append('<div id="modal"><span class="modalClose">×</span>' + data + '</div>');
                var modal = document.getElementById(id);
                var span = document.getElementsByClassName("modalClose")[0];
                span.onclick = function () {
                    modal.style.display = "none";
                };
                window.onclick = function (event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                }
            },
            error: function (xhr, thrownError) {
                $('#' + id).append('<div class="modAlert"><h3>' + content + '</h3><input class="modalAcept" type="button" value="Aceptar"></div>');
                $(".modalAcept").click(function () {
                    $('#' + id).css('display', 'none');
                })
            }
        });
    }
}

function plus() {
    var pressTimer;
    $('#plusCont').remove('#plusLogIn');
    if ($("#plus").length == 0) {
        $('#plusCont').append('<img id="plus" class="plus" src="http://rest.loopszone:8080/views/staticFiles/www/Home/Resources/style/img/plus.png">');
        $('#plus').mousedown(function () {
            pressTimer = window.setTimeout(function () {

                if ($('#userDash').length > 0) {
                    $('#userDash').css('display', 'flex');
                } else {
                    modal('userDash', 'views/dashBoard.html');
                    $('#userDash').css('display', 'flex');
                }
            }, 300);
        }).mouseup(function () {// evento click
            clearTimeout(pressTimer);
            var barOn = $('#barra').css("display");
            if (barOn != "none") {
                $('#barra').css("display", "none");
                $('#content').css("padding-top", "25px");
                $('#contUser').css("margin-top", "2%");
            } else {
                $('#barra').css("display", "block");
                $('#content').css("padding-top", "100px");
                $('#contUser').css("margin-top", "");
            }
        });
    }
}

function auth(req) {
    FB.api('/me?fields=id,name,email,birthday', function (response) {
        if (response.error) {
            faceLogin(req);
        } else {
            $.ajax({
                url: url,
                type: "POST",
                dataType: 'jsonp',
                data: {id: response.id, name: response.name, email: response.email, birthday: response.birthday},
                headers: {
                    "Access-Control-Allow-Origin": "*",
                    "Access-Control-Allow-Headers": "origin, content-type, accept"
                },
                success: function (data) {
                    localStorage['token'] = data;
                    request(req);
                }
            });
        }
    });
}

function request(req) {
    var data = req.split('/');
    if (typeof(Storage) !== "undefined") {
        var token = localStorage['token'];
        if (typeof(token) !== "undefined") {
            jqXHR = $.ajax({
                url: url,
                type: data[0],
                dataType: 'jsonp',
                async: false,
                processData: true,
                data: {tk: token, request: data[1]},
                headers: {
                    "Access-Control-Allow-Origin": "*",
                    "Access-Control-Allow-Headers": "origin, content-type, accept"
                },
                success: function (data) {
                    if (data === "expTk") {
                        localStorage.clear();
                        auth(req);
                    } else if (data === "warning") {
                        modal('warnigSecure', 'Se detecto in intento de acceso incorrepto');
                    }

                    return data;
                },
                error: function (xhr, thrownError) {
                    //Error type
                }
            });
            return jqXHR.responseTEXT;
        } else {
            auth(req);
        }
    } else {
        alert('Su browser no soporta el almacenamiento local, necesario para el correcto funcionamiento del sistema');
    }
}

function faceLogin(req) {
    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) {
            return;
        }
        js = d.createElement(s);
        js.id = id;
        js.src = "//connect.facebook.net/es_LA/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));

    window.fbAsyncInit = function () {
        FB.init({
            appId: '387158854997343',
            xfbml: true,
            version: 'v2.7'
        });
        statusUser(req);
    };

    function statusUser(req) {
        FB.getLoginStatus(function (response) {
            if (response.status === 'connected') {
                request(req);
                plus();
            } else if (response.status === 'not_authorized') {
                modal('authModal', 'views/authorized.html');
            } else {
                $('#plusCont').append('<img id="plusLogIn" class="plus" src="http://rest.loopszone:8080/views/staticFiles/www/Home/Resources/style/img/fb.png">');
                $('#plusLogIn').click(function () {
                    login(req);
                });
                localStorage.clear();
            }
        });
    }

    function login(req) {
        FB.login(function (response) {
            if (response['status'] == "unknown") {
                modal('authModal', 'views/authorized.html');
            } else {
                statusUser(req);
            }
        }, {scope: 'public_profile, user_likes, user_friends, email'});
    }

    if (req != 'access') {
        login(req);
    }
}

document.oncontextmenu = function () {
    return false;
};

$(document).ready(function () {
    faceLogin('access');
});