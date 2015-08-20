/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var pdt={};

pdt.row = function () {
    var row = $('<div class="table_row"></div>');
    $('#products_container').append(row);
    return row;
};


pdt.get = function (tag) {
    $.get("getitem?category="+tag, function (data) {
        var list=JSON.parse(data);
        var i = 0;
        pdt.printCell(list);
    });
};

pdt.printCell = function (list) {
    var i = 0;
    var row;
    while(i < list.length){
        if (i % 3 === 0){
            row = pdt.row();
        }
        row.append(pdt.formatHTML(list[i][0], list[i][1], list[i][2], list[i][3]));
        i += 1;
    }
    return row;
};


pdt.formatHTML = function (id, name, price, profile_pic) {
    return '\
<div class="table_cell">\
  <div class="product_item">\
    <div class="image_wrap">\
      <img src="'+profile_pic+'" alt="">\
      <div class="actions_wrap">\
        <div class="centered_buttons">\
          <a href="#" class="button_dark_grey middle_btn quick_view" data-modal-url="view?id='+id+'">Quick View</a>\
          <a href="#" onclick="icp.cart.add(' + id + ')" class="button_blue middle_btn add_to_cart">Add to Cart</a>\
        </div>\
      </div>\
      <div class="label_new">New</div>\
    </div>\
    <div class="description">\
      <a href="#">'+name+'</a>\
      <div class="clearfix product_info">\
        <p class="product_price alignleft"><b>$24.99</b></p>\
      </div>\
    </div>\
    <div class="full_description">\
      <a href="#" class="product_title">'+name+'</a>\
      <div class="v_centered product_reviews">\
        <ul class="topbar">\
          <li><b>0 Review(s)</b></li>\
        </ul>\
      </div>\
      <p>Mauris accumsan nulla vel diam. Sed in lacus ut enim adipiscing aliquet. Nulla venenatis. In pede mi, aliquet sit amet, euismod in, auctor ut, ligula.</p>\
    </div>\
    <div class="actions">\
      <p class="product_price bold">'+price+'</p>\
      <ul class="seller_stats">\
        <li><b>Manufacturer:</b> Intel</li>\
        <li><b>Availability:</b> <span class="in_stock">In stock</span></li>\
      </ul>\
      <ul class="buttons_col">\
        <li><button onclick="icp.cart.add(' + id + ')" class="button_blue middle_btn">Add to Cart</button></li>\
      </ul>\
    </div>\
  </div>\
</div>';

};



