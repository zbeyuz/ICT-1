/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var icp={};
icp.account= function (data) {
    if (data !== ""){
        $("#account").html("Welcome " + data + '!<br /><a href="javascript:;" onclick="icp.logout()"> logout </a>')
    } else {
        $("#account").html('Welcome visitor <a href="#" data-modal-url="modals/login.html">Login</a> or <a href="#" data-modal-url="modals/register.html">Register</a>');
    }
};

icp.logout = function () {
    $.get("login?act=logout", icp.account);
}

icp.login = function () {
    var form = {
        "user_email":$("#user_email").val(),
        "user_password":$("#user_password").val()
    };
    $.post("login", form, function (data) {
        var res = JSON.parse(data);
        if (res.length ===2) {
            icp.account(res[1]);
            $("#closeLogin").trigger("click");
        } else {
            $("#logWarn").html("<b>Notice:</b> Email or password incorrect");
        }
    });
};

$.get("login", icp.account);