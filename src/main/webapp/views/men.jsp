<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div class="colorlib-loader"></div>

<div id="page">


    <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col">
                    <p class="bread"><span><a href="/">Home</a></span> / <span>Men</span></p>
                </div>
            </div>
        </div>
    </div>

    <div class="breadcrumbs-two">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="breadcrumbs-img" style="background-image: url(/images/cover-img-1.jpg);">
                        <h2>Men's</h2>
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
                        <div class="featured-img featured-img-2" style="background-image: url(/images/men.jpg);">
                            <h2>Register</h2>
                            <p><a href="/register" class="btn btn-primary btn-lg">회원가입</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 text-center">
                    <div class="featured">
                        <div class="featured-img featured-img-2" style="background-image: url(/images/women.jpg);">
                            <h2>Login</h2>
                            <p><a href="/login" class="btn btn-primary btn-lg">로그인</a></p>
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
                <div class="col-sm-8 offset-sm-2 text-center colorlib-heading colorlib-heading-sm">
                    <h2>View All Products</h2>
                </div>
            </div>
            <div class="row row-pb-md">
                <c:forEach var="obj" items="${allitem.getList()}">
                <div class="col-md-3 col-lg-3 mb-4 text-center">
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
                <jsp:include page="page.jsp"/>
                <div class="w-100"></div>
            </div>
<%--            <div class="row">--%>
<%--                <div class="col-md-12 text-center">--%>
<%--                    <div class="block-27">--%>
<%--                        <ul>--%>
<%--                            <li><a href="#"><i class="ion-ios-arrow-back"></i></a></li>--%>
<%--                            <li class="active"><span>1</span></li>--%>
<%--                            <li><a href="#">2</a></li>--%>
<%--                            <li><a href="#">3</a></li>--%>
<%--                            <li><a href="#">4</a></li>--%>
<%--                            <li><a href="#">5</a></li>--%>
<%--                            <li><a href="#"><i class="ion-ios-arrow-forward"></i></a></li>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
        </div>
    </div>




</div>

<div class="gototop js-top">
    <a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
</div>
