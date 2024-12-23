<%@page contentType="text/html" pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>Safie - An tâm cho con</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="keywords" />
    <meta content="" name="description" />

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap"
      rel="stylesheet"
    />

    <!-- Icon Font Stylesheet -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css"
      integrity="sha512-5Hs3dF2AEPkpNAR7UiOHba+lRSJNeM2ECkwxUIxC1Q/FLycGTbNapWXB4tP889k5T5Ju8fs4b1P5z/iB4nMfSQ=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
    />

    <!-- Libraries Stylesheet -->
    <link href="/client/lib/lightbox/css/lightbox.min.css" rel="stylesheet" />
    <link
      href="/client/lib/owlcarousel/assets/owl.carousel.min.css"
      rel="stylesheet"
    />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/client/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Template Stylesheet -->
    <link href="/client/css/style.css" rel="stylesheet" />
    <style>
      .card-title {
        display: -webkit-box;
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
        overflow: hidden;
        text-overflow: ellipsis;
        font-size: 14px;
        letter-spacing: 1px;
        color: #45595b;
      }
    </style>
  </head>

  <body>
    <!-- Spinner Start -->
    <div
      id="spinner"
      class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50 d-flex align-items-center justify-content-center"
    >
      <div class="spinner-grow text-primary" role="status"></div>
    </div>
    <!-- Spinner End -->

    <jsp:include page="../layout/header.jsp" />

    <!-- Hero Start -->
    <div class="container-fluid py-5 mb-5 hero-header">
      <div class="container py-5">
        <div class="row g-5 align-items-center">
          <div class="col-md-12 col-lg-7">
            <h4 class="mb-3 text-danger">100% Organic Cotttons</h4>
            <h1 class="mb-5 display-3 text-light">
              Organic clothes for newborn babies
            </h1>
          </div>
          <div class="col-md-12 col-lg-5">
            <div
              id="carouselId"
              class="carousel slide position-relative"
              data-bs-ride="carousel"
            >
              <div class="carousel-inner" role="listbox">
                <div class="carousel-item active rounded">
                  <img
                    src="/images/others/embe1.jpg"
                    class="img-fluid w-100 h-100 bg-secondary rounded"
                    style="object-fit: cover"
                    alt="First slide"
                  />
                  <a href="#" class="btn px-4 py-2 text-white rounded fs-5"
                    >Bộ đồ liền thân</a
                  >
                </div>
                <div class="carousel-item rounded">
                  <img
                    src="/images/others/embe2.jpg"
                    class="img-fluid w-100 h-100 rounded"
                    style="object-fit: cover"
                    alt="Second slide"
                  />
                  <a href="#" class="btn px-4 py-2 text-white rounded fs-5"
                    >Tất & bao tay</a
                  >
                </div>
                <div class="carousel-item rounded">
                  <img
                    src="/images/others/embe3.jpg"
                    class="img-fluid w-100 h-100 rounded"
                    style="object-fit: cover"
                    alt="Second slide"
                  />
                  <a href="#" class="btn px-4 py-2 text-white rounded fs-5"
                    >Organic</a
                  >
                </div>
                <div class="carousel-item rounded">
                  <img
                    src="/images/others/embe4.webp"
                    class="img-fluid w-100 h-100 rounded"
                    style="object-fit: cover"
                    alt="Second slide"
                  />
                </div>
              </div>
              <button
                class="carousel-control-prev"
                type="button"
                data-bs-target="#carouselId"
                data-bs-slide="prev"
              >
                <span
                  class="carousel-control-prev-icon"
                  aria-hidden="true"
                ></span>
                <span class="visually-hidden">Previous</span>
              </button>
              <button
                class="carousel-control-next"
                type="button"
                data-bs-target="#carouselId"
                data-bs-slide="next"
              >
                <span
                  class="carousel-control-next-icon"
                  aria-hidden="true"
                ></span>
                <span class="visually-hidden">Next</span>
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Hero End -->

    <!-- Shop Start-->
    <div class="container-fluid fruite py-2">
      <div class="container py-5">
        <div class="tab-class text-center">
          <div class="row mb-3 g-2 gx-4">
            <div class="col-auto align-content-center">
              <h1>Sản phẩm Organic</h1>
            </div>
            <div class="col text-end align-content-center">
              <a
                href="/products"
                class="rounded-pill px-3 py-2 bg-secondary fw-bold text-dark text-nowrap"
                style="width: 130px"
                >Xem thêm <i class="bi bi-arrow-right-short fs-5"></i
              ></a>
            </div>
          </div>
          <div class="tab-content">
            <div id="tab-1" class="tab-pane fade show p-0 active">
              <div class="row g-4">
                <div class="col-lg-12">
                  <div class="row g-4">
                    <!-- Các thẻ sp start -->
                    <c:forEach var="product" items="${products}">
                      <div class="col-md-6 col-lg-4 col-xl-3">
                        <a href="/product/${product.id}" class="d-block">
                          <div
                            class="rounded position-relative fruite-item h-100 d-flex flex-column"
                          >
                            <div class="fruite-img">
                              <img
                                src="/images/product/${product.image}"
                                class="img-fluid w-100 rounded-top"
                                style="object-fit: cover"
                                alt="product thumbnail"
                              />
                            </div>
                            <div
                              class="text-white fw-bold bg-info px-3 py-1 rounded position-absolute"
                              style="top: 10px; left: 10px"
                            >
                              ${product.brand.name}
                            </div>
                            <div
                              class="p-4 border border-secondary border-top-0 rounded-bottom flex-grow-1 d-flex flex-column"
                            >
                              <div class="mb-3">
                                <a
                                  class="text-start fw-bold card-title"
                                  href="/product/${product.id}"
                                >
                                  ${product.name}
                                </a>
                              </div>
                              <div
                                class="d-flex justify-content-between flex-lg-wrap mt-auto"
                              >
                                <p class="text-dark fs-5 fw-bold mb-0">
                                  <fmt:formatNumber
                                    type="number"
                                    value="${product.price}"
                                  />
                                  đ
                                </p>
                                <button
                                  class="btn border border-secondary rounded-pill px-3 text-primary add-to-cart-btn"
                                  style="font-size: 14px"
                                  data-product-id="${product.id}"
                                >
                                  <i
                                    class="fa fa-shopping-bag me-2 text-primary"
                                  ></i
                                  >Thêm vào giỏ hàng
                                </button>
                              </div>
                            </div>
                          </div>
                        </a>
                      </div>
                    </c:forEach>
                    <!-- Các thẻ sp end -->
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Shop End-->

    <jsp:include page="../layout/feature.jsp" />

    <!-- Đánh giá từ khách hàng start -->
    <div class="container-fluid testimonial py-2">
      <div class="container py-5">
        <div class="testimonial-header text-center">
          <h4 class="text-primary">Đánh giá của khách hàng</h4>
          <h1 class="display-5 mb-5 text-dark pb-3">
            Các khách hàng đã nhận xét rằng !
          </h1>
        </div>
        <div class="owl-carousel testimonial-carousel">
          <div class="testimonial-item img-border-radius bg-light rounded p-4">
            <div class="position-relative">
              <i
                class="fa fa-quote-right fa-2x text-secondary position-absolute"
                style="bottom: 30px; right: 0"
              ></i>
              <div class="mb-4 pb-4 border-bottom border-secondary">
                <p class="mb-0">
                  "Quần áo và găng tay cho bé sơ sinh này thật sự rất mềm mại và
                  dễ chịu. Chất liệu cotton hữu cơ là sự lựa chọn tuyệt vời cho
                  làn da nhạy cảm của bé. Tôi đã mua bộ quần áo cho con gái và
                  bé rất thích, không hề bị ngứa hay khó chịu. Hơn nữa, thiết kế
                  xinh xắn và màu sắc cũng rất dễ thương. Sản phẩm rất đáng đồng
                  tiền bát gạo!"
                </p>
              </div>
              <div class="d-flex align-items-center flex-nowrap">
                <div class="bg-secondary rounded">
                  <img
                    src="/images/others/lananh_hanoi.webp"
                    class="img-fluid rounded"
                    style="width: 100px; height: 100px; object-fit: cover"
                    alt=""
                  />
                </div>
                <div class="ms-4 d-block">
                  <h4 class="text-dark">Chị Lan Anh</h4>
                  <p class="m-0 pb-3">Hà Nội</p>
                  <div class="d-flex pe-5">
                    <i class="fas fa-star text-warning"></i>
                    <i class="fas fa-star text-warning"></i>
                    <i class="fas fa-star text-warning"></i>
                    <i class="fas fa-star text-warning"></i>
                    <i class="fas fa-star text-warning"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="testimonial-item img-border-radius bg-light rounded p-4">
            <div class="position-relative">
              <i
                class="fa fa-quote-right fa-2x text-secondary position-absolute"
                style="bottom: 30px; right: 0"
              ></i>
              <div class="mb-4 pb-4 border-bottom border-secondary">
                <p class="mb-0">
                  "Tôi rất hài lòng với sản phẩm quần áo hữu cơ này. Chất liệu
                  cotton mát mẻ và an toàn, bé nhà tôi mặc vào rất thoải mái,
                  không bị hầm nóng hay kích ứng da. Găng tay cũng rất vừa vặn
                  và êm ái, không lo bé làm trầy xước mặt mình nữa. Tôi sẽ tiếp
                  tục ủng hộ và giới thiệu cho bạn bè."
                </p>
              </div>
              <div class="d-flex align-items-center flex-nowrap">
                <div class="bg-secondary rounded">
                  <img
                    src="/images/others/anhtrieu.jpg"
                    class="img-fluid rounded"
                    style="width: 100px; height: 100px; object-fit: cover"
                    alt=""
                  />
                </div>
                <div class="ms-4 d-block">
                  <h4 class="text-dark">Anh Triệu</h4>
                  <p class="m-0 pb-3">TP. Hồ Chí Minh</p>
                  <div class="d-flex pe-5">
                    <i class="fas fa-star text-warning"></i>
                    <i class="fas fa-star text-warning"></i>
                    <i class="fas fa-star text-warning"></i>
                    <i class="fas fa-star text-warning"></i>
                    <i class="fas fa-star text-warning"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="testimonial-item img-border-radius bg-light rounded p-4">
            <div class="position-relative">
              <i
                class="fa fa-quote-right fa-2x text-secondary position-absolute"
                style="bottom: 30px; right: 0"
              ></i>
              <div class="mb-4 pb-4 border-bottom border-secondary">
                <p class="mb-0">
                  "Chất lượng tuyệt vời, tôi rất thích những bộ quần áo organic
                  này! Các sản phẩm đều được làm từ nguyên liệu tự nhiên, nhẹ
                  nhàng cho làn da mỏng manh của bé. Sau khi giặt, quần áo vẫn
                  mềm mại, không bị xù lông hay cứng lại. Đặc biệt, tôi cảm thấy
                  yên tâm khi cho con mặc vì không lo hóa chất độc hại."
                </p>
              </div>
              <div class="d-flex align-items-center flex-nowrap">
                <div class="bg-secondary rounded">
                  <img
                    src="/images/others/anhkhoa.jpg"
                    class="img-fluid rounded"
                    style="width: 100px; height: 100px; object-fit: cover"
                    alt=""
                  />
                </div>
                <div class="ms-4 d-block">
                  <h4 class="text-dark">Anh Khoa</h4>
                  <p class="m-0 pb-3">Bình Dương</p>
                  <div class="d-flex pe-5">
                    <i class="fas fa-star text-warning"></i>
                    <i class="fas fa-star text-warning"></i>
                    <i class="fas fa-star text-warning"></i>
                    <i class="fas fa-star text-warning"></i>
                    <i class="fas fa-star text-warning"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Đánh giá từ khách hàng end -->

    <jsp:include page="../layout/footer.jsp" />

    <!-- Back to Top -->
    <a
      href="#"
      class="btn btn-primary border-3 border-primary rounded-circle back-to-top"
      ><i class="fa fa-arrow-up"></i
    ></a>

    <!-- side bar for choosing product size -->
    <jsp:include page="../layout/sizeModal.jsp" />

    <!-- alert modal cho biết thành công/thất bại khi add to cart -->
    <jsp:include page="../layout/alertModal.jsp" />

    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/client/lib/easing/easing.min.js"></script>
    <script src="/client/lib/waypoints/waypoints.min.js"></script>
    <script src="/client/lib/lightbox/js/lightbox.min.js"></script>
    <script src="/client/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="/client/js/main.js"></script>
    <script>
      $(document).ready(function () {
        if ("${addedProduct}" && "${addedSize}") {
          $("#alert-modal").modal("show");
        }

        $(".add-to-cart-btn").click(function () {
          if ("${userId}") {
            $("#rightSideModal").modal("show");
          } else {
            window.location.href = "/login";
          }
        });

        $(".add-to-cart-btn").click(function () {
          const productId = $(this).data("product-id");

          // Make an AJAX request to fetch the sizes for the selected product
          $.ajax({
            url: "/api/product", // URL to fetch sizes
            method: "GET",
            data: { id: productId },
            timeout: 600000,
            success: function (product) {
              console.log({ product });
              console.log(product.image);
              $("#size-modal-form").attr(
                "action",
                "/add-product-to-cart/" + product.id
              );
              $("#size-modal-img").attr(
                "src",
                "/images/product/" + product.image
              );
              $("#size-modal-name").text(product.name);
              $("#size-modal-brand").text(product.brand);
              const sizeSelect = $("#size-modal-size-radios");
              sizeSelect.empty();
              $.each(product.sizes, function (index, size) {
                const sizeTag =
                  "<label for=size-" +
                  size.id +
                  ' class="size-tag col-auto me-2 mb-2">' +
                  size.name +
                  '<input required id="size-' +
                  size.id +
                  '" type="radio" name="sizeId" value="' +
                  size.id +
                  '" class="d-none"/></label>';
                sizeSelect.append(sizeTag);
              });
              $("#size-modal-price").text(
                new Intl.NumberFormat("vi-VN", {
                  style: "currency",
                  currency: "VND",
                }).format(parseFloat(product.price))
              );
            },
            error: function () {
              alert("Something errors, please try again later!");
            },
          });
        });

        // $("#size-modal-form").submit(function (event) {
        //   event.preventDefault();
        //   var selectedSize = $("#sizeSelect").val();
        //   // Handle adding the product to the cart with the selected size
        //   // You can send an AJAX request to your server here
        //   alert("Product added to cart with size: " + selectedSize);
        //   $("#sizeModal").modal("hide");
        // });
      });
    </script>
  </body>
</html>
