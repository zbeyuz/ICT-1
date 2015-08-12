<!--==================================
                Quick view modal window
======================================-->

<div id="quick_view" class="modal_window">

    <button class="close arcticmodal-close"></button>

    <div class="clearfix">

        <!-- - - - - - - - - - - - - - Product image column - - - - - - - - - - - - - - - - -->

        <div class="single_product">

            <!-- - - - - - - - - - - - - - Image preview container - - - - - - - - - - - - - - - - -->

            <div class="image_preview_container" id="qv_preview">

                <img id="img_zoom" data-zoom-image="images/qv_large_1.JPG" src="images/qv_img_1.jpg" alt="">

            </div><!--/ .image_preview_container-->

            <!-- - - - - - - - - - - - - - End of image preview container - - - - - - - - - - - - - - - - -->

            <!-- - - - - - - - - - - - - - Prodcut thumbs carousel - - - - - - - - - - - - - - - - -->

            <div class="product_preview" data-output="#qv_preview">

                <div class="owl_carousel" id="thumbnails">

                    <img src="images/qv_thumb_1.jpg" data-large-image="images/qv_img_1.jpg" alt="">

                    <img src="images/qv_thumb_2.jpg" data-large-image="images/qv_img_2.jpg" alt="">

                    <img src="images/qv_thumb_3.jpg" data-large-image="images/qv_img_3.jpg" alt="">

                    <img src="images/qv_thumb_4.jpg" data-large-image="images/qv_img_4.jpg" alt="">

                </div><!--/ .owl-carousel-->

            </div><!--/ .product_preview-->

            <!-- - - - - - - - - - - - - - End of prodcut thumbs carousel - - - - - - - - - - - - - - - - -->

        </div>

        <!-- - - - - - - - - - - - - - End of product image column - - - - - - - - - - - - - - - - -->

        <!-- - - - - - - - - - - - - - Product description column - - - - - - - - - - - - - - - - -->

        <div class="single_product_description">

            <h3><a href="#">${name}</a></h3>

            <div class="description_section v_centered">

                <!-- - - - - - - - - - - - - - Product rating - - - - - - - - - - - - - - - - -->

                <ul class="rating">

                    <li class="active"></li>
                    <li class="active"></li>
                    <li class="active"></li>
                    <li></li>
                    <li></li>

                </ul>

                <!-- - - - - - - - - - - - - - End of product rating - - - - - - - - - - - - - - - - -->

                <!-- - - - - - - - - - - - - - Reviews menu - - - - - - - - - - - - - - - - -->

                <ul class="topbar">

                    <li><p><b>5 Review(s)</b></p></li>

                </ul>

                <!-- - - - - - - - - - - - - - End of reviews menu - - - - - - - - - - - - - - - - -->

            </div>

            <div class="description_section">

                <table class="product_info">

                    <tbody>

                        <tr>

                            <td><b>Manufacturer: </b></td>
                            <td><p>${manufacture}</p></td>

                        </tr>

                        <tr>

                            <td><b>Availability: </b></td>
                            <td><span class="in_stock">In stock: </span>20 item(s)</td>

                        </tr>

                        <tr>

                            <td><b>Product Code:</b></td>
                            <td>${id}</td>

                        </tr>

                    </tbody>

                </table>

            </div>

            <hr>

            <div class="description_section">

                <p>Mauris fermentum dictum magna. Sed laoreet aliquam leo. Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna.</p>

            </div>

            <hr>

            <p class="product_price">${price}</p>

            <!-- - - - - - - - - - - - - - Product size - - - - - - - - - - - - - - - - -->

            <div class="description_section_2 v_centered">

                <span class="title">Size:</span>

                <div class="custom_select min">

                    <select>

                        <option value="XL">XL</option>
                        <option value="L">L</option>
                        <option value="M">M</option>
                        <option value="S">S</option>

                    </select>

                </div>

            </div>

            <!-- - - - - - - - - - - - - - End of product size - - - - - - - - - - - - - - - - -->

            <!-- - - - - - - - - - - - - - Quantity - - - - - - - - - - - - - - - - -->

            <div class="description_section_3 v_centered">

                <span class="title">Qty:</span>

                <div class="qty min clearfix">

                    <button class="theme_button" data-direction="minus">&#45;</button>
                    <input type="text" name="" value="1">
                    <button class="theme_button" data-direction="plus">&#43;</button>

                </div>

            </div>

            <!-- - - - - - - - - - - - - - End of quantity - - - - - - - - - - - - - - - - -->

            <!-- - - - - - - - - - - - - - Product actions - - - - - - - - - - - - - - - - -->

            <div class="buttons_row">

                <button class="button_blue middle_btn">Add to Cart</button>

                <button class="button_dark_grey def_icon_btn middle_btn add_to_wishlist tooltip_container"><span class="tooltip top">Add to Wishlist</span></button>

            </div>

            <!-- - - - - - - - - - - - - - End of product actions - - - - - - - - - - - - - - - - -->

        </div>

        <!-- - - - - - - - - - - - - - End of product description column - - - - - - - - - - - - - - - - -->

    </div>

</div>

<!--==================================
                End quick view modal window
====================================== -->