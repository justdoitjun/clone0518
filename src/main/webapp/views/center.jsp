<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<aside id="colorlib-hero">
  <div class="flexslider">
    <ul class="slides">
      <li style="background-image: url(images/img_bg_1.jpg);">
        <div class="overlay"></div>
        <div class="container-fluid">
          <div class="row">
            <div class="col-sm-6 offset-sm-3 text-center slider-text">
              <div class="slider-text-inner">
                <div class="desc">
                  <h1 class="head-1">Men's</h1>
                  <h2 class="head-2">Shoes</h2>
                  <h2 class="head-3">Collection</h2>
                  <p class="category"><span>New trending shoes</span></p>
                  <p><a href="#" class="btn btn-primary">Shop Collection</a></p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </li>
      <li style="background-image: url(images/img_bg_2.jpg);">
        <div class="overlay"></div>
        <div class="container-fluid">
          <div class="row">
            <div class="col-sm-6 offset-sm-3 text-center slider-text">
              <div class="slider-text-inner">
                <div class="desc">
                  <h1 class="head-1">Huge</h1>
                  <h2 class="head-2">Sale</h2>
                  <h2 class="head-3"><strong class="font-weight-bold">50%</strong> Off</h2>
                  <p class="category"><span>Big sale sandals</span></p>
                  <p><a href="#" class="btn btn-primary">Shop Collection</a></p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </li>
      <li style="background-image: url(images/img_bg_3.jpg);">
        <div class="overlay"></div>
        <div class="container-fluid">
          <div class="row">
            <div class="col-sm-6 offset-sm-3 text-center slider-text">
              <div class="slider-text-inner">
                <div class="desc">
                  <h1 class="head-1">New</h1>
                  <h2 class="head-2">Arrival</h2>
                  <h2 class="head-3">up to <strong class="font-weight-bold">30%</strong> off</h2>
                  <p class="category"><span>New stylish shoes for men</span></p>
                  <p><a href="#" class="btn btn-primary">Shop Collection</a></p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </li>
    </ul>
  </div>
</aside>

<div class="colorlib-intro">
  <div class="container">
    <div class="row">
      <div class="col-sm-12 text-center">
        <h2 class="intro">365일 전 상품 무료배송 (ACC제외)</h2>
      </div>
    </div>
  </div>
</div>
<div class="colorlib-product">
  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-6 text-center">
        <div class="featured">
          <a href="/item/men" class="featured-img" style="background-image: url(images/men.jpg);"></a>
          <div class="desc">
            <h2><a href="/item/men">Shop Men's Collection</a></h2>
          </div>
        </div>
      </div>
      <div class="col-sm-6 text-center">
        <div class="featured">
          <a href="/item/women" class="featured-img" style="background-image: url(images/women.jpg);"></a>
          <div class="desc">
            <h2><a href="/item/women">Shop Women's Collection</a></h2>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="colorlib-product">
    <div class="container">
    <div class="row">
      <div class="col-sm-8 offset-sm-2 text-center colorlib-heading">
        <h2>View All Products</h2>
      </div>
    </div>

    <div class="row row-pb-md">
      <c:forEach var="obj" items="${allitem}">
        <div class="col-lg-3 mb-4 text-center">
          <div class="product-entry border">
            <a href="/item/get?id=${obj.id}" class="prod-img">
              <img src="/images/${obj.imgname}" class="img-fluid" alt="Free html5 bootstrap 4 template">
            </a>
            <div class="desc">
              <h2><a href="/item/get?id=${obj.id}">${obj.name}</a></h2>
              <span class="price"><fmt:formatNumber value="${obj.price}" pattern="###,###원"/></span>
            </div>
          </div>
        </div>
      </c:forEach>
    </div>


</div>
</div>

