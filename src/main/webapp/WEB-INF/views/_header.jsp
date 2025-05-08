<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<header class="section-header" style="background-color: #f8c8dc;">
  <section class="header-main border-bottom">
    <div class="container">
      <div class="row align-items-center">
        <!-- Logo -->
        <div class="col-lg-3 py-3">
          <a class="text-body" href="${pageContext.request.contextPath}/">
            <h3 class="text-white">Shop Bán Đồ chơi</h3> <!-- Chữ màu trắng cho logo -->
          </a>
        </div>

        <!-- Search Bar -->
        <div class="col-lg-5 ${empty sessionScope.currentUser ? 'mb-3 mb-lg-0' : ''}">
          <form action="${pageContext.request.contextPath}/search" method="post" class="search">
            <div class="input-group w-100">
              <input type="text" class="form-control" placeholder="Nhập từ khóa cần tìm ..." name="q" value="${requestScope.query}">
              <button class="btn" style="background-color: #ff3385; color: white" type="submit">
                <i class="bi bi-search"></i>
              </button>
            </div>
          </form>
        </div>

        <!-- Account and Cart -->
        <div class="col-lg-4">
          <c:if test="${not empty sessionScope.currentUser}">
            <ul class="nav col-12 col-lg-auto my-2 my-lg-0 justify-content-center justify-content-lg-end text-small">
              <li>
                <a href="${pageContext.request.contextPath}/user" class="nav-link text-white"> <!-- Liên kết chữ trắng -->
                  <i class="bi bi-person d-block text-center fs-3"></i>
                  Tài khoản
                </a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath}/order" class="nav-link text-white"> <!-- Liên kết chữ trắng -->
                  <i class="bi bi-list-check d-block text-center fs-3"></i>
                  Đơn hàng
                </a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath}/cart" class="nav-link text-white position-relative"> <!-- Liên kết chữ trắng -->
                  <span id="total-cart-items-quantity" class="position-absolute top-0 end-0 mt-2 badge rounded-pill bg-primary">
                    ...
                  </span>
                  <i class="bi bi-cart d-block text-center fs-3 position-relative"></i>
                  Giỏ hàng
                </a>
              </li>
            </ul>
          </c:if>
        </div>
      </div>
    </div>
  </section>
</header>

<!-- Navbar -->
<nav class="navbar navbar-main navbar-expand-lg navbar-light border-bottom" style="background-color: #f8c8dc;">
  <div class="container">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <c:choose>
        <c:when test="${not empty sessionScope.currentUser}">
          <span class="me-2 text-white">Xin chào <strong>${sessionScope.currentUser.fullname}</strong>!</span> <!-- Chữ trắng cho lời chào -->
          <a class="btn btn-light ms-2" href="${pageContext.request.contextPath}/signout" role="button">
            Đăng xuất
          </a>
        </c:when>
        <c:otherwise>
          <a class="btn btn-warning" href="${pageContext.request.contextPath}/signup" role="button">
            Đăng ký
          </a>
          <a class="btn"  style="background-color: #ff3385; color: white" href="${pageContext.request.contextPath}/signin" role="button">
            Đăng nhập
          </a>
        </c:otherwise>
      </c:choose>
    </div>
  </div>
</nav>
<style>
  /* Nền hồng và chữ trắng cho header */
  .section-header {
    background-color: #f8c8dc; /* Nền hồng */
  }

  .text-white {
    color: #fff !important; /* Chữ màu trắng */
  }

  .navbar {
    background-color: #f8c8dc; /* Nền hồng cho navbar */
  }

  .navbar .navbar-toggler-icon {
    background-color: #fff; /* Đổi màu icon toggle sang trắng */
  }

  .navbar .navbar-light .navbar-nav .nav-link {
    color: #fff; /* Chữ trắng cho các liên kết trong navbar */
  }

  .navbar .navbar-nav .nav-link:hover {
    color: #f8c8dc; /* Màu nền của liên kết khi hover */
    background-color: #fff; /* Đổi nền liên kết khi hover */
  }

  /* Thay đổi màu chữ và icon cho các phần khác */
  .navbar .btn-light {
    color: #fff; /* Chữ trắng cho nút Đăng ký và Đăng xuất */
    background-color: #f8c8dc; /* Nền hồng cho nút */
  }

  .navbar .btn-primary {
    color: #fff; /* Chữ trắng cho nút Đăng nhập */
    background-color: #007bff; /* Nền xanh cho nút */
  }
</style>