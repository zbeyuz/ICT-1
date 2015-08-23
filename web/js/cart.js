/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var cart = {};
cart.items = [];
cart.total = function () {
    var i = 0;
    var total = 0;
    for (i = 0; i < cart.items.length; i += 1) {
        total += cart.items[i][9];
    }
    return total;
};

cart.get = function () {
    $.get('cart?act=view', function (data) {
        var items = JSON.parse(data);
        cart.items = items;
        $('#subtotal').html('$'+cart.total());
        $('#total').html('$'+cart.total());
        $('#clict').html('');
        var i = 0;
        for (i = 0; i < items.length; i += 1) {
            $('#clist').append('\
<tr id="r'+items[i][0]+'">\
  <td class="product_image_col" data-title="Product Image">\
    <a href="#"><img src="'+items[i][7]+'" alt=""></a>\
  </td>\
  <td data-title="Product Name">\
    <a href="#" class="product_title">'+items[i][4]+'</a>\
    <ul class="sc_product_info">\
      <li><b>Size:</b> '+items[i][3]+'</li>\
      <li><b>Color:</b> '+items[i][2]+'</li>\
      <li><b>Material:</b> '+items[i][1]+'</li>\
    </ul>\
  </td>\
  <td data-title="SKU">'+items[i][5]+'</td>\
  <td class="subtotal" data-title="Price">$'+items[i][6]+'</td>\
  <td data-title="Quantity">\
    <div class="qty min clearfix">\
      <button class="theme_button" data-direction="minus">&#45;</button>\
      <input type="text" name="" value="'+items[i][8]+'">\
      <button class="theme_button" data-direction="plus">&#43;</button>\
  </div>\
  </td>\
  <td class="total" data-title="Total">$'+items[i][9]+'</td>\
  <td data-title="Action"><a href="#" onclick="cart.remove('+items[i][0]+')" class="button_dark_grey middle_btn">Delete</a></td>\
</tr>\
            ');
        }
    });
};

cart.remove = function (item) {
    $.post("cart", {"item": item, "qty": 0});
    document.getElementById('clist').innerHTML='';
    $('#r'+item).remove();
};
cart.get()