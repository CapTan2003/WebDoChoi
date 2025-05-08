<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:setLocale value="vi_VN"/>
<!DOCTYPE html>
<html lang="vi">
<head>
  <jsp:include page="_meta.jsp"/>
  <title>Trang chủ</title>
</head>
<body>
<jsp:include page="_header.jsp"/>

<section class="section-content mb-2">
  <div class="container">
    <header class="section-heading py-4 d-flex justify-content-between">
      <h3 class="section-title">Danh mục sản phẩm</h3>
    </header> <!-- section-heading.// -->

    <div class="d-flex"> <!-- Dùng Flexbox để chia 2 cột -->
      <!-- Danh mục sản phẩm -->
      <div class="category-column col-lg-3 col-md-4 col-12">
        <div class="row item-grid">
          <c:forEach var="category" items="${requestScope.categories}">
            <div class="col-lg-12 col-md-6">
              <div class="card mb-4">
                <div class="card-body">
                  <a href="${pageContext.request.contextPath}/category?id=${category.id}" class="stretched-link">
                    <div class="d-flex align-items-center">
                      <c:choose>
                        <c:when test="${empty category.imageName}">
                          <img width="50" height="50" src="${pageContext.request.contextPath}/img/50px.png" alt="50px.png">
                        </c:when>
                        <c:otherwise>
                          <img width="50" height="50" src="${pageContext.request.contextPath}/image/${category.imageName}" alt="${category.imageName}">
                        </c:otherwise>
                      </c:choose>
                      <span class="category-title ms-3">${category.name}</span>
                    </div>
                  </a>
                </div>
              </div>
            </div> <!-- col.// -->
          </c:forEach>
        </div> <!-- row.// -->
      </div> <!-- category-column.// -->

      <!-- Sản phẩm mới nhất -->
      <div class="product-column col-lg-9 col-md-8 col-12">
        <header class="section-heading py-4 d-flex justify-content-between">
          <h3 class="section-title">Sản phẩm mới nhất</h3>
        </header> <!-- section-heading.// -->
        <div class="row item-grid">
          <c:forEach var="product" items="${requestScope.products}">
            <div class="col-xl-4 col-lg-4 col-md-6">
              <div class="card p-3 mb-4">
                <a href="${pageContext.request.contextPath}/product?id=${product.id}" class="img-wrap text-center">
                  <c:choose>
                    <c:when test="${empty product.imageName}">
                      <img width="200" height="200" class="img-fluid" src="${pageContext.request.contextPath}/img/280px.png" alt="280px.png">
                    </c:when>
                    <c:otherwise>
                      <img width="200" height="200" class="img-fluid" src="${pageContext.request.contextPath}/image/${product.imageName}" alt="${product.imageName}">
                    </c:otherwise>
                  </c:choose>
                </a>
                <figcaption class="info-wrap mt-2">
                  <a href="${pageContext.request.contextPath}/product?id=${product.id}" class="title">${product.name}</a>
                  <div>
                    <c:choose>
                      <c:when test="${product.discount == 0}">
                            <span class="price mt-1 fw-bold">
                              <fmt:formatNumber pattern="#,##0" value="${product.price}"/>₫
                            </span>
                      </c:when>
                      <c:otherwise>
                            <span class="price mt-1 fw-bold">
                              <fmt:formatNumber pattern="#,##0" value="${product.price * (100 - product.discount) / 100}"/>₫
                            </span>
                        <span class="ms-2 text-muted text-decoration-line-through">
                              <fmt:formatNumber pattern="#,##0" value="${product.price}"/>₫
                            </span>
                        <span class="ms-2 badge bg-info">
                              -<fmt:formatNumber pattern="#,##0" value="${product.discount}"/>%
                            </span>
                      </c:otherwise>
                    </c:choose>
                  </div>
                </figcaption>
              </div>
            </div> <!-- col.// -->
          </c:forEach>
        </div> <!-- row.// -->
      </div> <!-- product-column.// -->
    </div> <!-- d-flex.// -->
  </div> <!-- container.// -->
</section> <!-- section-content.// -->

<jsp:include page="_footer.jsp"/>
</body>
</html>
