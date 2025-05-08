<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:setLocale value="vi_VN"/>
<!DOCTYPE html>
<html lang="vi">

<head>
  <jsp:include page="_meta.jsp"/>
  <title>Trang chủ Admin</title>
  <!-- You can include some extra styles here if needed -->
  <style>
    .card {
      border-radius: 8px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      background-color: #ffffff;
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .card:hover {
      transform: translateY(-10px);
      box-shadow: 0 10px 15px rgba(0, 0, 0, 0.1);
    }

    .card .title {
      font-size: 2rem;
      font-weight: bold;
      color: #ff66b2;
    }

    .card span {
      font-size: 1rem;
      color: #6c757d;
    }

    .card-body {
      padding: 30px;
      text-align: center;
    }

    .section-content {
      padding: 50px 0;
    }

    .card-container {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 20px;
    }

    .card-container .card {
      border: none;
      border-radius: 10px;
      background-color: #f9f9f9;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .card-container .card h4 {
      font-size: 1.8rem;
      font-weight: 700;
      color: #343a40;
    }

    .card-container .card span {
      font-size: 1rem;
      color: #868e96;
    }
  </style>
</head>

<body>
<jsp:include page="_headerAdmin.jsp"/>

<section class="section-content padding-y">
  <div class="container">
    <div class="card bg-light">
      <div class="card-body p-5">
        <h1 class="display-5 mb-5 text-center">Quản lý Shop Bán Đồ chơi</h1>
        <div class="card-container">
          <div class="card">
            <div class="card-body">
              <h4 class="title">${requestScope.totalUsers}</h4>
              <span>người dùng</span>
            </div>
          </div>

          <div class="card">
            <div class="card-body">
              <h4 class="title">${requestScope.totalCategories}</h4>
              <span>loại</span>
            </div>
          </div>

          <div class="card">
            <div class="card-body">
              <h4 class="title">${requestScope.totalProducts}</h4>
              <span>đồ chơi</span>
            </div>
          </div>

          <div class="card">
            <div class="card-body">
              <h4 class="title">${requestScope.totalOrders}</h4>
              <span>đơn hàng</span>
            </div>
          </div>
        </div>
      </div>
    </div> <!-- card.// -->
  </div> <!-- container.// -->
</section> <!-- section-content.// -->

<jsp:include page="_footerAdmin.jsp"/>
</body>

</html>
