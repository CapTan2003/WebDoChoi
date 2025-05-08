<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<footer class="section-footer" style="background-color: #f8c8dc; padding: 1rem;">
  <section class="footer-top py-5">
    <div class="container">
      <div class="row">
        <!-- Giới thiệu -->
        <div class="col-md-4 col-sm-12 mb-4 mb-md-0">
          <h5 class="pb-2 text-white">Về chúng tôi</h5> <!-- Thêm class text-white cho tiêu đề -->
          <p class="text-muted">Chúng tôi cung cấp những sản phẩm đồ chơi chất lượng cao cho trẻ em, với cam kết mang đến niềm vui và sự phát triển cho các em nhỏ.</p>
          <ul class="list-unstyled">
            <li><a href="#" class="text-light">Về Shop</a></li>
            <li><a href="#" class="text-light">Tuyển dụng</a></li>
            <li><a href="#" class="text-light">Chính sách bảo mật</a></li>
            <li><a href="#" class="text-light">Giải quyết khiếu nại</a></li>
          </ul>
        </div>

        <!-- Hỗ trợ khách hàng -->
        <div class="col-md-4 col-sm-12 mb-4 mb-md-0">
          <h5 class="pb-2 text-white">Hỗ trợ khách hàng</h5> <!-- Thêm class text-white cho tiêu đề -->
          <ul class="list-unstyled">
            <li><a href="tel:190080xx" class="text-light">Hotline: 1900-80xx</a></li>
            <li><a href="#" class="text-light">Câu hỏi thường gặp</a></li>
            <li><a href="#" class="text-light">Hướng dẫn đặt hàng</a></li>
            <li><a href="#" class="text-light">Chính sách đổi trả</a></li>
          </ul>
        </div>

        <!-- Đăng ký nhận tin -->
        <div class="col-md-4 col-sm-12">
          <h5 class="pb-2 text-white">Đăng ký nhận tin</h5> <!-- Thêm class text-white cho tiêu đề -->
          <form action="#" method="post">
            <div class="input-group">
              <input type="email" class="form-control" placeholder="Email của bạn ..." required>
              <button class="btn" style="background-color: #ff3385; color: white" type="submit">
                Đăng ký
              </button>
            </div>
          </form>
        </div>
      </div> <!-- row -->
    </div> <!-- container -->
  </section> <!-- footer-top -->

  <!-- Footer bottom with Pink Background -->
</footer> <!-- section-footer -->

<style>
  /* Đảm bảo chữ màu trắng cho tất cả các liên kết */
  .section-footer {
    background-color: #f8c8dc; /* Nền hồng */
  }

  .text-white {
    color: #fff !important; /* Đảm bảo chữ trắng */
  }

  .text-light {
    color: #fff; /* Các liên kết sẽ có màu trắng */
  }

  /* Màu cho các liên kết */
  .section-footer a {
    color: #fff; /* Đảm bảo màu trắng cho tất cả các liên kết */
    text-decoration: none;
  }

  .section-footer a:hover {
    text-decoration: underline; /* Hiệu ứng khi di chuột */
  }
</style>
