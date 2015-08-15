/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var icp = {};
icp.account = function (data) {
    if (data !== "") {
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
        "user_email": $("#user_email").val(),
        "user_password": $("#user_password").val()
    };
    $.post("login", form, function (data) {
        var res = JSON.parse(data);
        if (res.length === 2) {
            icp.account(res[1]);
            $("#closeLogin").trigger("click");
        } else {
            $("#logWarn").html("<b>Notice:</b> Email or password incorrect");
        }
    });
};

icp.cart = {};

icp.cart.add = function (item) {
    $.post("cart", {"item": item}, function (data) {
        console.log(data);
        if(data==="invuser"){
            alert("Please login or register!");
        }
        $("#cart").html("");
        icp.cart.get();
    });
};



icp.cart.get = function () {
    $.get("cart", function (data) {
        var items = JSON.parse(data);
        var i = 0;
        for (i = 0; i < items.length; i++) {
        $("#cart").append(' \
            <div class="animated_item"><p class="title">Recently added item(s)</p><div class="clearfix sc_product"> \
              <a href="product?id=' + items[i][0] + '" class="product_thumb"><img height="50" width="50" src="' + items[i][3] + '" alt=""></a> \
              <a href="product?id=' + items[i][0] + '" class="product_name">' + items[i][1] + '</a> \
              <p>'+items[i][2]+'</p>\
              <button onclick="icp.cart.rm(' + items[i][0] + ')" class="close"></button> \
            </div></div>\
            ');
    
        }
    });
};

icp.cart.rm = function (item) {
    var req={"act":"rm"};
    req["item"]=item;
    $.post("cart",req);
};

icp.wish = function (item) {
    var i = {};
    i.item = item;
    $.post("wish", i);
}
$.get("login", icp.account);
icp.cart.get();