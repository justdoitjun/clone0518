<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="breadcrumbs">
  <div class="container">
    <div class="row">
      <div class="col">
        <p class="bread"><span><a href="/">Home</a></span> / <span>Women</span></p>
      </div>
    </div>
  </div>
</div>

<div class="breadcrumbs-two">
  <div class="container">
    <div class="row">
      <div class="col">
        <div class="breadcrumbs-img" style="background-image: url(/images/cover-img-1.jpg);">
          <h2>Women's</h2>
        </div>
        <div class="menu text-center">
          <p></p>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="colorlib-featured">
  <div class="container">
    <div class="row">
      <div class="col-sm-4 text-center">
        <div class="featured">
          <div class="featured-img featured-img-2" style="background-image: url(/images/img_bg_2.jpg);">
            <h2>Register</h2>
            <p><a href="#" class="btn btn-primary btn-lg">회원가입</a></p>
          </div>
        </div>
      </div>
      <div class="col-sm-4 text-center">
        <div class="featured">
          <div class="featured-img featured-img-2" style="background-image: url(/images/women.jpg);">
            <h2>Login</h2>
            <p><a href="#" class="btn btn-primary btn-lg">로그인</a></p>
          </div>
        </div>
      </div>
      <c:if test="${logincust != null}">
        <div class="col-sm-4 text-center">
          <div class="featured">
            <div class="featured-img featured-img-2" style="background-image: url(/images/item-11.jpg);">
              <h2>Cart</h2>
              <p><a href="/item/cart?id=${logincust.id}" class="btn btn-primary btn-lg">장바구니</a></p>
            </div>
          </div>
        </div>
      </c:if>
      <c:if test="${logincust == null}"  >
        <div class="col-sm-4 text-center">
          <div class="featured">
            <div class="featured-img featured-img-2" style="background-image: url(/images/item-11.jpg);">
              <h2>Cart</h2>
              <p><a href="/login" class="btn btn-primary btn-lg">장바구니</a></p>
            </div>
          </div>
        </div>
      </c:if>
    </div>
  </div>
</div>

<div class="colorlib-product">
  <div class="container">
    <div class="row">

      <div class="col-lg-3 col-xl-3">
        <div class="row">
          <div class="col-sm-12">
            <div class="side border mb-1">
              <h3>Brand</h3>
              <ul>
                <li><a href="#">Nike</a></li>
                <li><a href="#">Adidas</a></li>
                <li><a href="#">Merrel</a></li>
                <li><a href="#">Gucci</a></li>
                <li><a href="#">Skechers</a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-12">
            <div class="side border mb-1">
              <h3>Size/Width</h3>
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
              <div class="block-26">
                <h4>Width</h4>
                <ul>
                  <li><a href="#">M</a></li>
                  <li><a href="#">W</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-sm-12">
            <div class="side border mb-1">
              <h3>Style</h3>
              <ul>
                <li><a href="#">Slip Ons</a></li>
                <li><a href="#">Boots</a></li>
                <li><a href="#">Sandals</a></li>
                <li><a href="#">Lace Ups</a></li>
                <li><a href="#">Oxfords</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-9 col-xl-9">

        <div class="row row-pb-md">
          <c:forEach var="obj" items="${allitem.getList()}">
            <div class="col-lg-4 mb-4 text-center">
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



        <jsp:include page="pageWomen.jsp"/>

<%--        <div class="row">--%>
<%--          <div class="col-md-12 text-center">--%>
<%--            <div class="block-27">--%>
<%--              <ul>--%>
<%--                <li><a href="#"><i class="ion-ios-arrow-back"></i></a></li>--%>
<%--                <li class="active"><span>1</span></li>--%>
<%--                <li><a href="#">2</a></li>--%>
<%--                <li><a href="#">3</a></li>--%>
<%--                <li><a href="#">4</a></li>--%>
<%--                <li><a href="#">5</a></li>--%>
<%--                <li><a href="#"><i class="ion-ios-arrow-forward"></i></a></li>--%>
<%--              </ul>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
      </div>
    </div>
  </div>
</div>

<div class="gototop js-top">
  <a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
</div>
