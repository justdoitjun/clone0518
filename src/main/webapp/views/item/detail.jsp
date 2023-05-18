<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
    let item_get = {
        init:function(){
            $('#cart_btn').click(function(){
                let cust_id = '${logincust.id}';
                let item_id = ${gitem.id};
                let cnt = $('#cnt').val();
                $.ajax({
                    url:'/item/addcart',
                    data:{cust_id:cust_id, item_id:item_id, cnt:cnt},
                    success:function(){
                        $('#myModal').modal();
                    }
                })
                // $('#cart_form').attr({
                //     method:'get',
                //     action:'/item/addcart'
                // });
                // $('#cart_form').submit();
            });
        }
    };
    $(function(){
        item_get.init();
    });
</script>



<div id="page">



  <div class="colorlib-product">
    <div class="container">
      <div class="row row-pb-lg product-detail-wrap">
        <div class="col-sm-8">
          <div class="owl-carousel">
            <div class="item">
              <div class="product-entry border">
                <a href="#" class="prod-img">
                  <img src="/images/${gitem.imgname}" class="img-fluid" alt="Free html5 bootstrap 4 template"/>
                </a>
              </div>
            </div>
          </div>
        </div>


        <div class="col-sm-4">

            <div class="product-desc">
              <h3> ${gitem.id} </h3>
              <h3> ${gitem.name} </h3>
            <p class="price">
              <span><h4>${gitem.price}</h4></span>
              <span class="rate">
									<i class="icon-star-full"></i>
									<i class="icon-star-full"></i>
									<i class="icon-star-full"></i>
									<i class="icon-star-full"></i>
									<i class="icon-star-half"></i>
									(74 Rating)
								</span>
            </p>
            <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>

              <%--            size--%>
              <div class="size-wrap">
                      <div class="block-26 mb-2">
                        <h4>Size</h4>
                        <ul>
                          <li><a href="#">7</a></li>
                          <li><a href="#">7.5</a></li>
                          <li><a href="#">8</a></li>
                          <li><a href="#">8.5</a></li>
                          <li><a href="#">9</a></li>
                          <li><a href="#">9.5</a></li>
                          <li><a href="#">10</a></li>
                          <li><a href="#">10.5</a></li>
                          <li><a href="#">11</a></li>
                          <li><a href="#">11.5</a></li>
                          <li><a href="#">12</a></li>
                          <li><a href="#">12.5</a></li>
                          <li><a href="#">13</a></li>
                          <li><a href="#">13.5</a></li>
                          <li><a href="#">14</a></li>
                        </ul>
                      </div>
              </div>
              <%--            size--%>



                  <c:if test="${logincust != null}">
                      <form id="cart_form" class="form-inline well">
                          <input type="hidden" name="cust_id" value="${logincust.id}">
                          <input type="hidden" name="item_id" value="${gitem.id}">
                          <label class="control-label col-sm-2" for="cnt">Count:</label><br/>
                          <div class="form-group">
                              <input type="number" name="cnt" id="cnt" placeholder="Enter Count" class="form-control"/>
                          </div>
                          <div class="row">
                              <div class="col-sm-12 text-center">
                                  <p class="addtocart">
                                  <button id="cart_btn" type="button" class="btn btn-primary btn-addtocart"><i class="icon-shopping-cart"></i>Add to Cart</button>
                                  </p>
                              </div>
                          </div>
                      </form>
                  </c:if>
          </div>
          </div>
          </div>
          </div>
      </div>





    <%--안봐도 됨. 맨 밑--%>
    <div class="row">
            <div class="col-sm-12">
              <div class="row">
                <div class="col-md-12 pills">
                  <div class="bd-example bd-example-tabs">
                    <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">

                      <li class="nav-item">
                        <a class="nav-link active" id="pills-description-tab" data-toggle="pill" href="#pills-description" role="tab" aria-controls="pills-description" aria-expanded="true">Description</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="pills-manufacturer-tab" data-toggle="pill" href="#pills-manufacturer" role="tab" aria-controls="pills-manufacturer" aria-expanded="true">Manufacturer</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="pills-review-tab" data-toggle="pill" href="#pills-review" role="tab" aria-controls="pills-review" aria-expanded="true">Review</a>
                      </li>
                    </ul>

                    <div class="tab-content" id="pills-tabContent">
                      <div class="tab-pane border fade show active" id="pills-description" role="tabpanel" aria-labelledby="pills-description-tab">
                        <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
                        <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>
                        <ul>
                          <li>The Big Oxmox advised her not to do so</li>
                          <li>Because there were thousands of bad Commas</li>
                          <li>Wild Question Marks and devious Semikoli</li>
                          <li>She packed her seven versalia</li>
                          <li>tial into the belt and made herself on the way.</li>
                        </ul>
                      </div>

                      <div class="tab-pane border fade" id="pills-manufacturer" role="tabpanel" aria-labelledby="pills-manufacturer-tab">
                        <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
                        <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>
                      </div>

                      <div class="tab-pane border fade" id="pills-review" role="tabpanel" aria-labelledby="pills-review-tab">
                        <div class="row">
                          <div class="col-md-8">
                            <h3 class="head">23 Reviews</h3>
                            <div class="review">
                              <div class="user-img" style="background-image: url(images/person1.jpg)"></div>
                              <div class="desc">
                                <h4>
                                  <span class="text-left">Jacob Webb</span>
                                  <span class="text-right">14 March 2018</span>
                                </h4>
                                <p class="star">
                                                            <span>
                                                                <i class="icon-star-full"></i>
                                                                <i class="icon-star-full"></i>
                                                                <i class="icon-star-full"></i>
                                                                <i class="icon-star-half"></i>
                                                                <i class="icon-star-empty"></i>
                                                            </span>
                                  <span class="text-right"><a href="#" class="reply"><i class="icon-reply"></i></a></span>
                                </p>
                                <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrov</p>
                              </div>
                            </div>
                            <div class="review">
                              <div class="user-img" style="background-image: url(images/person2.jpg)"></div>
                              <div class="desc">
                                <h4>
                                  <span class="text-left">Jacob Webb</span>
                                  <span class="text-right">14 March 2018</span>
                                </h4>
                                <p class="star">
                                                            <span>
                                                                <i class="icon-star-full"></i>
                                                                <i class="icon-star-full"></i>
                                                                <i class="icon-star-full"></i>
                                                                <i class="icon-star-half"></i>
                                                                <i class="icon-star-empty"></i>
                                                            </span>
                                  <span class="text-right"><a href="#" class="reply"><i class="icon-reply"></i></a></span>
                                </p>
                                <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrov</p>
                              </div>
                            </div>
                            <div class="review">
                              <div class="user-img" style="background-image: url(images/person3.jpg)"></div>
                              <div class="desc">
                                <h4>
                                  <span class="text-left">Jacob Webb</span>
                                  <span class="text-right">14 March 2018</span>
                                </h4>
                                <p class="star">
                                                            <span>
                                                                <i class="icon-star-full"></i>
                                                                <i class="icon-star-full"></i>
                                                                <i class="icon-star-full"></i>
                                                                <i class="icon-star-half"></i>
                                                                <i class="icon-star-empty"></i>
                                                            </span>
                                  <span class="text-right"><a href="#" class="reply"><i class="icon-reply"></i></a></span>
                                </p>
                                <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrov</p>
                              </div>
                            </div>
                          </div>
                          <div class="col-md-4">
                            <div class="rating-wrap">
                              <h3 class="head">Give a Review</h3>
                              <div class="wrap">
                                <p class="star">
                                                            <span>
                                                                <i class="icon-star-full"></i>
                                                                <i class="icon-star-full"></i>
                                                                <i class="icon-star-full"></i>
                                                                <i class="icon-star-full"></i>
                                                                <i class="icon-star-full"></i>
                                                                (98%)
                                                            </span>
                                  <span>20 Reviews</span>
                                </p>
                                <p class="star">
                                                            <span>
                                                                <i class="icon-star-full"></i>
                                                                <i class="icon-star-full"></i>
                                                                <i class="icon-star-full"></i>
                                                                <i class="icon-star-full"></i>
                                                                <i class="icon-star-empty"></i>
                                                                (85%)
                                                            </span>
                                  <span>10 Reviews</span>
                                </p>
                                <p class="star">
                                                            <span>
                                                                <i class="icon-star-full"></i>
                                                                <i class="icon-star-full"></i>
                                                                <i class="icon-star-full"></i>
                                                                <i class="icon-star-empty"></i>
                                                                <i class="icon-star-empty"></i>
                                                                (70%)
                                                            </span>
                                  <span>5 Reviews</span>
                                </p>
                                <p class="star">
                                                            <span>
                                                                <i class="icon-star-full"></i>
                                                                <i class="icon-star-full"></i>
                                                                <i class="icon-star-empty"></i>
                                                                <i class="icon-star-empty"></i>
                                                                <i class="icon-star-empty"></i>
                                                                (10%)
                                                            </span>
                                  <span>0 Reviews</span>
                                </p>
                                <p class="star">
                                                            <span>
                                                                <i class="icon-star-full"></i>
                                                                <i class="icon-star-empty"></i>
                                                                <i class="icon-star-empty"></i>
                                                                <i class="icon-star-empty"></i>
                                                                <i class="icon-star-empty"></i>
                                                                (0%)
                                                            </span>
                                  <span>0 Reviews</span>
                                </p>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
    <%--안봐도 됨. 맨 밑--%>

</div>
<div class="gototop js-top">
  <a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
</div>


<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!-- popper -->
<script src="js/popper.min.js"></script>
<!-- bootstrap 4.1 -->
<script src="js/bootstrap.min.js"></script>
<!-- jQuery easing -->
<script src="js/jquery.easing.1.3.js"></script>
<!-- Waypoints -->
<script src="js/jquery.waypoints.min.js"></script>
<!-- Flexslider -->
<script src="js/jquery.flexslider-min.js"></script>
<!-- Owl carousel -->
<script src="js/owl.carousel.min.js"></script>
<!-- Magnific Popup -->
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/magnific-popup-options.js"></script>
<!-- Date Picker -->
<script src="js/bootstrap-datepicker.js"></script>
<!-- Stellar Parallax -->
<script src="js/jquery.stellar.min.js"></script>
<!-- Main -->
<script src="js/main.js"></script>

