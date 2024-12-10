<%@page contentType="text/html" pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>BabieFash - Thời trang cho bé</title>
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
      href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
      rel="stylesheet"
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
            <h4 class="mb-3 text-secondary">100% Organic Foods</h4>
            <h1 class="mb-5 display-3 text-primary">
              Organic Veggies & Fruits Foods
            </h1>
            <div class="position-relative mx-auto">
              <input
                class="form-control border-2 border-secondary w-75 py-3 px-4 rounded-pill"
                type="number"
                placeholder="Search"
              />
              <button
                type="submit"
                class="btn btn-primary border-2 border-secondary py-3 px-4 position-absolute rounded-pill text-white h-100"
                style="top: 0; right: 25%"
              >
                Submit Now
              </button>
            </div>
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
                    src="/client/img/hero-img-1.png"
                    class="img-fluid w-100 h-100 bg-secondary rounded"
                    alt="First slide"
                  />
                  <a href="#" class="btn px-4 py-2 text-white rounded"
                    >Fruites</a
                  >
                </div>
                <div class="carousel-item rounded">
                  <img
                    src="/client/img/hero-img-2.jpg"
                    class="img-fluid w-100 h-100 rounded"
                    alt="Second slide"
                  />
                  <a href="#" class="btn px-4 py-2 text-white rounded"
                    >Vesitables</a
                  >
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

    <jsp:include page="../layout/feature.jsp" />

    <!-- Fruits Shop Start-->
    <div class="container-fluid fruite py-2">
      <div class="container py-5">
        <div class="tab-class text-center">
          <div class="row g-4">
            <div class="col-lg-4 text-start">
              <h1>Sản phẩm Organic</h1>
            </div>
            <div class="col-lg-8 text-end">
              <ul class="nav nav-pills d-inline-flex text-center mb-5">
                <li class="nav-item">
                  <a
                    class="d-flex m-2 py-2 bg-light rounded-pill active"
                    data-bs-toggle="pill"
                    href="#tab-1"
                  >
                    <span class="text-dark" style="width: 130px">Tất cả</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a
                    class="d-flex py-2 m-2 bg-light rounded-pill"
                    data-bs-toggle="pill"
                    href="#tab-2"
                  >
                    <span class="text-dark" style="width: 130px"
                      >Vegetables</span
                    >
                  </a>
                </li>
                <li class="nav-item">
                  <a
                    class="d-flex m-2 py-2 bg-light rounded-pill"
                    data-bs-toggle="pill"
                    href="#tab-3"
                  >
                    <span class="text-dark" style="width: 130px">Fruits</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a
                    class="d-flex m-2 py-2 bg-light rounded-pill"
                    data-bs-toggle="pill"
                    href="#tab-4"
                  >
                    <span class="text-dark" style="width: 130px">Bread</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a
                    class="d-flex m-2 py-2 bg-light rounded-pill"
                    data-bs-toggle="pill"
                    href="#tab-5"
                  >
                    <span class="text-dark" style="width: 130px">Meat</span>
                  </a>
                </li>
              </ul>
            </div>
          </div>
          <div class="tab-content">
            <div id="tab-1" class="tab-pane fade show p-0 active">
              <div class="row g-4">
                <div class="col-lg-12">
                  <div class="row g-4">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                      <div class="rounded position-relative fruite-item">
                        <div class="fruite-img">
                          <img
                            src="/client/img/fruite-item-5.jpg"
                            class="img-fluid w-100 rounded-top"
                            alt=""
                          />
                        </div>
                        <div
                          class="text-white bg-secondary px-3 py-1 rounded position-absolute"
                          style="top: 10px; left: 10px"
                        >
                          Fruits
                        </div>
                        <div
                          class="p-4 border border-secondary border-top-0 rounded-bottom"
                        >
                          <h4>Grapes</h4>
                          <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing
                            elit sed do eiusmod te incididunt
                          </p>
                          <div
                            class="d-flex justify-content-between flex-lg-wrap"
                          >
                            <p class="text-dark fs-5 fw-bold mb-0">
                              $4.99 / kg
                            </p>
                            <a
                              href="#"
                              class="btn border border-secondary rounded-pill px-3 text-primary"
                              ><i
                                class="fa fa-shopping-bag me-2 text-primary"
                              ></i>
                              Add to cart</a
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                      <div class="rounded position-relative fruite-item">
                        <div class="fruite-img">
                          <img
                            src="/client/img/fruite-item-5.jpg"
                            class="img-fluid w-100 rounded-top"
                            alt=""
                          />
                        </div>
                        <div
                          class="text-white bg-secondary px-3 py-1 rounded position-absolute"
                          style="top: 10px; left: 10px"
                        >
                          Fruits
                        </div>
                        <div
                          class="p-4 border border-secondary border-top-0 rounded-bottom"
                        >
                          <h4>Grapes</h4>
                          <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing
                            elit sed do eiusmod te incididunt
                          </p>
                          <div
                            class="d-flex justify-content-between flex-lg-wrap"
                          >
                            <p class="text-dark fs-5 fw-bold mb-0">
                              $4.99 / kg
                            </p>
                            <a
                              href="#"
                              class="btn border border-secondary rounded-pill px-3 text-primary"
                              ><i
                                class="fa fa-shopping-bag me-2 text-primary"
                              ></i>
                              Add to cart</a
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                      <div class="rounded position-relative fruite-item">
                        <div class="fruite-img">
                          <img
                            src="/client/img/fruite-item-2.jpg"
                            class="img-fluid w-100 rounded-top"
                            alt=""
                          />
                        </div>
                        <div
                          class="text-white bg-secondary px-3 py-1 rounded position-absolute"
                          style="top: 10px; left: 10px"
                        >
                          Fruits
                        </div>
                        <div
                          class="p-4 border border-secondary border-top-0 rounded-bottom"
                        >
                          <h4>Raspberries</h4>
                          <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing
                            elit sed do eiusmod te incididunt
                          </p>
                          <div
                            class="d-flex justify-content-between flex-lg-wrap"
                          >
                            <p class="text-dark fs-5 fw-bold mb-0">
                              $4.99 / kg
                            </p>
                            <a
                              href="#"
                              class="btn border border-secondary rounded-pill px-3 text-primary"
                              ><i
                                class="fa fa-shopping-bag me-2 text-primary"
                              ></i>
                              Add to cart</a
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                      <div class="rounded position-relative fruite-item">
                        <div class="fruite-img">
                          <img
                            src="/client/img/fruite-item-4.jpg"
                            class="img-fluid w-100 rounded-top"
                            alt=""
                          />
                        </div>
                        <div
                          class="text-white bg-secondary px-3 py-1 rounded position-absolute"
                          style="top: 10px; left: 10px"
                        >
                          Fruits
                        </div>
                        <div
                          class="p-4 border border-secondary border-top-0 rounded-bottom"
                        >
                          <h4>Apricots</h4>
                          <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing
                            elit sed do eiusmod te incididunt
                          </p>
                          <div
                            class="d-flex justify-content-between flex-lg-wrap"
                          >
                            <p class="text-dark fs-5 fw-bold mb-0">
                              $4.99 / kg
                            </p>
                            <a
                              href="#"
                              class="btn border border-secondary rounded-pill px-3 text-primary"
                              ><i
                                class="fa fa-shopping-bag me-2 text-primary"
                              ></i>
                              Add to cart</a
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                      <div class="rounded position-relative fruite-item">
                        <div class="fruite-img">
                          <img
                            src="/client/img/fruite-item-3.jpg"
                            class="img-fluid w-100 rounded-top"
                            alt=""
                          />
                        </div>
                        <div
                          class="text-white bg-secondary px-3 py-1 rounded position-absolute"
                          style="top: 10px; left: 10px"
                        >
                          Fruits
                        </div>
                        <div
                          class="p-4 border border-secondary border-top-0 rounded-bottom"
                        >
                          <h4>Banana</h4>
                          <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing
                            elit sed do eiusmod te incididunt
                          </p>
                          <div
                            class="d-flex justify-content-between flex-lg-wrap"
                          >
                            <p class="text-dark fs-5 fw-bold mb-0">
                              $4.99 / kg
                            </p>
                            <a
                              href="#"
                              class="btn border border-secondary rounded-pill px-3 text-primary"
                              ><i
                                class="fa fa-shopping-bag me-2 text-primary"
                              ></i>
                              Add to cart</a
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                      <div class="rounded position-relative fruite-item">
                        <div class="fruite-img">
                          <img
                            src="/client/img/fruite-item-1.jpg"
                            class="img-fluid w-100 rounded-top"
                            alt=""
                          />
                        </div>
                        <div
                          class="text-white bg-secondary px-3 py-1 rounded position-absolute"
                          style="top: 10px; left: 10px"
                        >
                          Fruits
                        </div>
                        <div
                          class="p-4 border border-secondary border-top-0 rounded-bottom"
                        >
                          <h4>Oranges</h4>
                          <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing
                            elit sed do eiusmod te incididunt
                          </p>
                          <div
                            class="d-flex justify-content-between flex-lg-wrap"
                          >
                            <p class="text-dark fs-5 fw-bold mb-0">
                              $4.99 / kg
                            </p>
                            <a
                              href="#"
                              class="btn border border-secondary rounded-pill px-3 text-primary"
                              ><i
                                class="fa fa-shopping-bag me-2 text-primary"
                              ></i>
                              Add to cart</a
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                      <div class="rounded position-relative fruite-item">
                        <div class="fruite-img">
                          <img
                            src="/client/img/fruite-item-2.jpg"
                            class="img-fluid w-100 rounded-top"
                            alt=""
                          />
                        </div>
                        <div
                          class="text-white bg-secondary px-3 py-1 rounded position-absolute"
                          style="top: 10px; left: 10px"
                        >
                          Fruits
                        </div>
                        <div
                          class="p-4 border border-secondary border-top-0 rounded-bottom"
                        >
                          <h4>Raspberries</h4>
                          <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing
                            elit sed do eiusmod te incididunt
                          </p>
                          <div
                            class="d-flex justify-content-between flex-lg-wrap"
                          >
                            <p class="text-dark fs-5 fw-bold mb-0">
                              $4.99 / kg
                            </p>
                            <a
                              href="#"
                              class="btn border border-secondary rounded-pill px-3 text-primary"
                              ><i
                                class="fa fa-shopping-bag me-2 text-primary"
                              ></i>
                              Add to cart</a
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                      <div class="rounded position-relative fruite-item">
                        <div class="fruite-img">
                          <img
                            src="/client/img/fruite-item-5.jpg"
                            class="img-fluid w-100 rounded-top"
                            alt=""
                          />
                        </div>
                        <div
                          class="text-white bg-secondary px-3 py-1 rounded position-absolute"
                          style="top: 10px; left: 10px"
                        >
                          Fruits
                        </div>
                        <div
                          class="p-4 border border-secondary border-top-0 rounded-bottom"
                        >
                          <h4>Grapes</h4>
                          <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing
                            elit sed do eiusmod te incididunt
                          </p>
                          <div
                            class="d-flex justify-content-between flex-lg-wrap"
                          >
                            <p class="text-dark fs-5 fw-bold mb-0">
                              $4.99 / kg
                            </p>
                            <a
                              href="#"
                              class="btn border border-secondary rounded-pill px-3 text-primary"
                              ><i
                                class="fa fa-shopping-bag me-2 text-primary"
                              ></i>
                              Add to cart</a
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div id="tab-2" class="tab-pane fade show p-0">
              <div class="row g-4">
                <div class="col-lg-12">
                  <div class="row g-4">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                      <div class="rounded position-relative fruite-item">
                        <div class="fruite-img">
                          <img
                            src="/client/img/fruite-item-5.jpg"
                            class="img-fluid w-100 rounded-top"
                            alt=""
                          />
                        </div>
                        <div
                          class="text-white bg-secondary px-3 py-1 rounded position-absolute"
                          style="top: 10px; left: 10px"
                        >
                          Fruits
                        </div>
                        <div
                          class="p-4 border border-secondary border-top-0 rounded-bottom"
                        >
                          <h4>Grapes</h4>
                          <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing
                            elit sed do eiusmod te incididunt
                          </p>
                          <div
                            class="d-flex justify-content-between flex-lg-wrap"
                          >
                            <p class="text-dark fs-5 fw-bold mb-0">
                              $4.99 / kg
                            </p>
                            <a
                              href="#"
                              class="btn border border-secondary rounded-pill px-3 text-primary"
                              ><i
                                class="fa fa-shopping-bag me-2 text-primary"
                              ></i>
                              Add to cart</a
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                      <div class="rounded position-relative fruite-item">
                        <div class="fruite-img">
                          <img
                            src="/client/img/fruite-item-2.jpg"
                            class="img-fluid w-100 rounded-top"
                            alt=""
                          />
                        </div>
                        <div
                          class="text-white bg-secondary px-3 py-1 rounded position-absolute"
                          style="top: 10px; left: 10px"
                        >
                          Fruits
                        </div>
                        <div
                          class="p-4 border border-secondary border-top-0 rounded-bottom"
                        >
                          <h4>Raspberries</h4>
                          <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing
                            elit sed do eiusmod te incididunt
                          </p>
                          <div
                            class="d-flex justify-content-between flex-lg-wrap"
                          >
                            <p class="text-dark fs-5 fw-bold mb-0">
                              $4.99 / kg
                            </p>
                            <a
                              href="#"
                              class="btn border border-secondary rounded-pill px-3 text-primary"
                              ><i
                                class="fa fa-shopping-bag me-2 text-primary"
                              ></i>
                              Add to cart</a
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div id="tab-3" class="tab-pane fade show p-0">
              <div class="row g-4">
                <div class="col-lg-12">
                  <div class="row g-4">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                      <div class="rounded position-relative fruite-item">
                        <div class="fruite-img">
                          <img
                            src="/client/img/fruite-item-1.jpg"
                            class="img-fluid w-100 rounded-top"
                            alt=""
                          />
                        </div>
                        <div
                          class="text-white bg-secondary px-3 py-1 rounded position-absolute"
                          style="top: 10px; left: 10px"
                        >
                          Fruits
                        </div>
                        <div
                          class="p-4 border border-secondary border-top-0 rounded-bottom"
                        >
                          <h4>Oranges</h4>
                          <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing
                            elit sed do eiusmod te incididunt
                          </p>
                          <div
                            class="d-flex justify-content-between flex-lg-wrap"
                          >
                            <p class="text-dark fs-5 fw-bold mb-0">
                              $4.99 / kg
                            </p>
                            <a
                              href="#"
                              class="btn border border-secondary rounded-pill px-3 text-primary"
                              ><i
                                class="fa fa-shopping-bag me-2 text-primary"
                              ></i>
                              Add to cart</a
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                      <div class="rounded position-relative fruite-item">
                        <div class="fruite-img">
                          <img
                            src="/client/img/fruite-item-6.jpg"
                            class="img-fluid w-100 rounded-top"
                            alt=""
                          />
                        </div>
                        <div
                          class="text-white bg-secondary px-3 py-1 rounded position-absolute"
                          style="top: 10px; left: 10px"
                        >
                          Fruits
                        </div>
                        <div
                          class="p-4 border border-secondary border-top-0 rounded-bottom"
                        >
                          <h4>Apple</h4>
                          <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing
                            elit sed do eiusmod te incididunt
                          </p>
                          <div
                            class="d-flex justify-content-between flex-lg-wrap"
                          >
                            <p class="text-dark fs-5 fw-bold mb-0">
                              $4.99 / kg
                            </p>
                            <a
                              href="#"
                              class="btn border border-secondary rounded-pill px-3 text-primary"
                              ><i
                                class="fa fa-shopping-bag me-2 text-primary"
                              ></i>
                              Add to cart</a
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div id="tab-4" class="tab-pane fade show p-0">
              <div class="row g-4">
                <div class="col-lg-12">
                  <div class="row g-4">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                      <div class="rounded position-relative fruite-item">
                        <div class="fruite-img">
                          <img
                            src="/client/img/fruite-item-5.jpg"
                            class="img-fluid w-100 rounded-top"
                            alt=""
                          />
                        </div>
                        <div
                          class="text-white bg-secondary px-3 py-1 rounded position-absolute"
                          style="top: 10px; left: 10px"
                        >
                          Fruits
                        </div>
                        <div
                          class="p-4 border border-secondary border-top-0 rounded-bottom"
                        >
                          <h4>Grapes</h4>
                          <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing
                            elit sed do eiusmod te incididunt
                          </p>
                          <div
                            class="d-flex justify-content-between flex-lg-wrap"
                          >
                            <p class="text-dark fs-5 fw-bold mb-0">
                              $4.99 / kg
                            </p>
                            <a
                              href="#"
                              class="btn border border-secondary rounded-pill px-3 text-primary"
                              ><i
                                class="fa fa-shopping-bag me-2 text-primary"
                              ></i>
                              Add to cart</a
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                      <div class="rounded position-relative fruite-item">
                        <div class="fruite-img">
                          <img
                            src="/client/img/fruite-item-4.jpg"
                            class="img-fluid w-100 rounded-top"
                            alt=""
                          />
                        </div>
                        <div
                          class="text-white bg-secondary px-3 py-1 rounded position-absolute"
                          style="top: 10px; left: 10px"
                        >
                          Fruits
                        </div>
                        <div
                          class="p-4 border border-secondary border-top-0 rounded-bottom"
                        >
                          <h4>Apricots</h4>
                          <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing
                            elit sed do eiusmod te incididunt
                          </p>
                          <div
                            class="d-flex justify-content-between flex-lg-wrap"
                          >
                            <p class="text-dark fs-5 fw-bold mb-0">
                              $4.99 / kg
                            </p>
                            <a
                              href="#"
                              class="btn border border-secondary rounded-pill px-3 text-primary"
                              ><i
                                class="fa fa-shopping-bag me-2 text-primary"
                              ></i>
                              Add to cart</a
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div id="tab-5" class="tab-pane fade show p-0">
              <div class="row g-4">
                <div class="col-lg-12">
                  <div class="row g-4">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                      <div class="rounded position-relative fruite-item">
                        <div class="fruite-img">
                          <img
                            src="/client/img/fruite-item-3.jpg"
                            class="img-fluid w-100 rounded-top"
                            alt=""
                          />
                        </div>
                        <div
                          class="text-white bg-secondary px-3 py-1 rounded position-absolute"
                          style="top: 10px; left: 10px"
                        >
                          Fruits
                        </div>
                        <div
                          class="p-4 border border-secondary border-top-0 rounded-bottom"
                        >
                          <h4>Banana</h4>
                          <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing
                            elit sed do eiusmod te incididunt
                          </p>
                          <div
                            class="d-flex justify-content-between flex-lg-wrap"
                          >
                            <p class="text-dark fs-5 fw-bold mb-0">
                              $4.99 / kg
                            </p>
                            <a
                              href="#"
                              class="btn border border-secondary rounded-pill px-3 text-primary"
                              ><i
                                class="fa fa-shopping-bag me-2 text-primary"
                              ></i>
                              Add to cart</a
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                      <div class="rounded position-relative fruite-item">
                        <div class="fruite-img">
                          <img
                            src="/client/img/fruite-item-2.jpg"
                            class="img-fluid w-100 rounded-top"
                            alt=""
                          />
                        </div>
                        <div
                          class="text-white bg-secondary px-3 py-1 rounded position-absolute"
                          style="top: 10px; left: 10px"
                        >
                          Fruits
                        </div>
                        <div
                          class="p-4 border border-secondary border-top-0 rounded-bottom"
                        >
                          <h4>Raspberries</h4>
                          <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing
                            elit sed do eiusmod te incididunt
                          </p>
                          <div
                            class="d-flex justify-content-between flex-lg-wrap"
                          >
                            <p class="text-dark fs-5 fw-bold mb-0">
                              $4.99 / kg
                            </p>
                            <a
                              href="#"
                              class="btn border border-secondary rounded-pill px-3 text-primary"
                              ><i
                                class="fa fa-shopping-bag me-2 text-primary"
                              ></i>
                              Add to cart</a
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                      <div class="rounded position-relative fruite-item">
                        <div class="fruite-img">
                          <img
                            src="/client/img/fruite-item-1.jpg"
                            class="img-fluid w-100 rounded-top"
                            alt=""
                          />
                        </div>
                        <div
                          class="text-white bg-secondary px-3 py-1 rounded position-absolute"
                          style="top: 10px; left: 10px"
                        >
                          Fruits
                        </div>
                        <div
                          class="p-4 border border-secondary border-top-0 rounded-bottom"
                        >
                          <h4>Oranges</h4>
                          <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing
                            elit sed do eiusmod te incididunt
                          </p>
                          <div
                            class="d-flex justify-content-between flex-lg-wrap"
                          >
                            <p class="text-dark fs-5 fw-bold mb-0">
                              $4.99 / kg
                            </p>
                            <a
                              href="#"
                              class="btn border border-secondary rounded-pill px-3 text-primary"
                              ><i
                                class="fa fa-shopping-bag me-2 text-primary"
                              ></i>
                              Add to cart</a
                            >
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
    </div>
    <!-- Fruits Shop End-->

    <!-- Sp Khuyển mãi start -->
    <!-- <div class="container-fluid vesitable py-5">
      <div class="container py-5">
        <h1 class="mb-0">Sản phẩm giảm giá sâu</h1>
        <div class="owl-carousel vegetable-carousel justify-content-center">
          <div
            class="border border-primary rounded position-relative vesitable-item"
          >
            <div class="vesitable-img">
              <img
                src="/client/img/vegetable-item-6.jpg"
                class="img-fluid w-100 rounded-top"
                alt=""
              />
            </div>
            <div
              class="text-white bg-primary px-3 py-1 rounded position-absolute"
              style="top: 10px; right: 10px"
            >
              Vegetable
            </div>
            <div class="p-4 rounded-bottom">
              <h4>Parsely</h4>
              <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit sed do
                eiusmod te incididunt
              </p>
              <div class="d-flex justify-content-between flex-lg-wrap">
                <p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
                <a
                  href="#"
                  class="btn border border-secondary rounded-pill px-3 text-primary"
                  ><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                  cart</a
                >
              </div>
            </div>
          </div>
          <div
            class="border border-primary rounded position-relative vesitable-item"
          >
            <div class="vesitable-img">
              <img
                src="/client/img/vegetable-item-1.jpg"
                class="img-fluid w-100 rounded-top"
                alt=""
              />
            </div>
            <div
              class="text-white bg-primary px-3 py-1 rounded position-absolute"
              style="top: 10px; right: 10px"
            >
              Vegetable
            </div>
            <div class="p-4 rounded-bottom">
              <h4>Parsely</h4>
              <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit sed do
                eiusmod te incididunt
              </p>
              <div class="d-flex justify-content-between flex-lg-wrap">
                <p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
                <a
                  href="#"
                  class="btn border border-secondary rounded-pill px-3 text-primary"
                  ><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                  cart</a
                >
              </div>
            </div>
          </div>
          <div
            class="border border-primary rounded position-relative vesitable-item"
          >
            <div class="vesitable-img">
              <img
                src="/client/img/vegetable-item-3.png"
                class="img-fluid w-100 rounded-top bg-light"
                alt=""
              />
            </div>
            <div
              class="text-white bg-primary px-3 py-1 rounded position-absolute"
              style="top: 10px; right: 10px"
            >
              Vegetable
            </div>
            <div class="p-4 rounded-bottom">
              <h4>Banana</h4>
              <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit sed do
                eiusmod te incididunt
              </p>
              <div class="d-flex justify-content-between flex-lg-wrap">
                <p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
                <a
                  href="#"
                  class="btn border border-secondary rounded-pill px-3 text-primary"
                  ><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                  cart</a
                >
              </div>
            </div>
          </div>
          <div
            class="border border-primary rounded position-relative vesitable-item"
          >
            <div class="vesitable-img">
              <img
                src="/client/img/vegetable-item-4.jpg"
                class="img-fluid w-100 rounded-top"
                alt=""
              />
            </div>
            <div
              class="text-white bg-primary px-3 py-1 rounded position-absolute"
              style="top: 10px; right: 10px"
            >
              Vegetable
            </div>
            <div class="p-4 rounded-bottom">
              <h4>Bell Papper</h4>
              <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit sed do
                eiusmod te incididunt
              </p>
              <div class="d-flex justify-content-between flex-lg-wrap">
                <p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
                <a
                  href="#"
                  class="btn border border-secondary rounded-pill px-3 text-primary"
                  ><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                  cart</a
                >
              </div>
            </div>
          </div>
          <div
            class="border border-primary rounded position-relative vesitable-item"
          >
            <div class="vesitable-img">
              <img
                src="/client/img/vegetable-item-5.jpg"
                class="img-fluid w-100 rounded-top"
                alt=""
              />
            </div>
            <div
              class="text-white bg-primary px-3 py-1 rounded position-absolute"
              style="top: 10px; right: 10px"
            >
              Vegetable
            </div>
            <div class="p-4 rounded-bottom">
              <h4>Potatoes</h4>
              <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit sed do
                eiusmod te incididunt
              </p>
              <div class="d-flex justify-content-between flex-lg-wrap">
                <p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
                <a
                  href="#"
                  class="btn border border-secondary rounded-pill px-3 text-primary"
                  ><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                  cart</a
                >
              </div>
            </div>
          </div>
          <div
            class="border border-primary rounded position-relative vesitable-item"
          >
            <div class="vesitable-img">
              <img
                src="/client/img/vegetable-item-6.jpg"
                class="img-fluid w-100 rounded-top"
                alt=""
              />
            </div>
            <div
              class="text-white bg-primary px-3 py-1 rounded position-absolute"
              style="top: 10px; right: 10px"
            >
              Vegetable
            </div>
            <div class="p-4 rounded-bottom">
              <h4>Parsely</h4>
              <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit sed do
                eiusmod te incididunt
              </p>
              <div class="d-flex justify-content-between flex-lg-wrap">
                <p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
                <a
                  href="#"
                  class="btn border border-secondary rounded-pill px-3 text-primary"
                  ><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                  cart</a
                >
              </div>
            </div>
          </div>
          <div
            class="border border-primary rounded position-relative vesitable-item"
          >
            <div class="vesitable-img">
              <img
                src="/client/img/vegetable-item-5.jpg"
                class="img-fluid w-100 rounded-top"
                alt=""
              />
            </div>
            <div
              class="text-white bg-primary px-3 py-1 rounded position-absolute"
              style="top: 10px; right: 10px"
            >
              Vegetable
            </div>
            <div class="p-4 rounded-bottom">
              <h4>Potatoes</h4>
              <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit sed do
                eiusmod te incididunt
              </p>
              <div class="d-flex justify-content-between flex-lg-wrap">
                <p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
                <a
                  href="#"
                  class="btn border border-secondary rounded-pill px-3 text-primary"
                  ><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                  cart</a
                >
              </div>
            </div>
          </div>
          <div
            class="border border-primary rounded position-relative vesitable-item"
          >
            <div class="vesitable-img">
              <img
                src="/client/img/vegetable-item-6.jpg"
                class="img-fluid w-100 rounded-top"
                alt=""
              />
            </div>
            <div
              class="text-white bg-primary px-3 py-1 rounded position-absolute"
              style="top: 10px; right: 10px"
            >
              Vegetable
            </div>
            <div class="p-4 rounded-bottom">
              <h4>Parsely</h4>
              <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit sed do
                eiusmod te incididunt
              </p>
              <div class="d-flex justify-content-between flex-lg-wrap">
                <p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
                <a
                  href="#"
                  class="btn border border-secondary rounded-pill px-3 text-primary"
                  ><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                  cart</a
                >
              </div>
            </div>
          </div>
        </div>
      </div>
    </div> -->
    <!-- Sp Khuyển mãi end -->

    <!-- Banner SP Khuyến mãi start-->
    <!-- <div class="container-fluid banner bg-secondary my-5">
      <div class="container py-5">
        <div class="row g-4 align-items-center">
          <div class="col-lg-6">
            <div class="py-4">
              <h1 class="display-3 text-white">Thêm nhiều khuyến mãi</h1>
              <p class="fw-normal display-3 text-dark mb-4">tại cửa hàng</p>
              <p class="mb-4 text-dark">
                BabieFash mang lại những sản phẩm thời trang cho bé với chất
                hàng đầu và giá cả hợp lý nhất trên thị trường Việt Nam
              </p>
              <a
                href="#"
                class="banner-btn btn border-2 border-white rounded-pill text-dark py-3 px-5"
                >BUY</a
              >
            </div>
          </div>
          <div class="col-lg-6">
            <div class="position-relative">
              <img
                src="/client/img/baner-1.png"
                class="img-fluid w-100 rounded"
                alt=""
              />
              <div
                class="d-flex align-items-center justify-content-center bg-white rounded-circle position-absolute"
                style="width: 140px; height: 140px; top: 0; left: 0"
              >
                <h1 style="font-size: 100px">1</h1>
                <div class="d-flex flex-column">
                  <span class="h2 mb-0">50$</span>
                  <span class="h4 text-muted mb-0">kg</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div> -->
    <!-- Banner SP Khuyến mãi end -->

    <!-- SP bán chạy start -->
    <div class="container-fluid py-2">
      <div class="container py-5">
        <div class="text-center mx-auto mb-5" style="max-width: 700px">
          <h1 class="display-4">Sản phẩm Bestseller</h1>
          <p>
            Những bộ quần áo hữu cơ được yêu thích nhất, an toàn tuyệt đối cho
            làn da nhạy cảm của bé. Mềm mại, thoải mái và bền vững – lựa chọn
            hoàn hảo cho bé yêu!
          </p>
        </div>
        <div class="row g-4">
          <div class="col-lg-6 col-xl-4">
            <div class="p-4 rounded bg-light">
              <div class="row align-items-center">
                <div class="col-6">
                  <img
                    src="/client/img/best-product-1.jpg"
                    class="img-fluid rounded-circle w-100"
                    alt=""
                  />
                </div>
                <div class="col-6">
                  <a href="#" class="h5">Organic Tomato</a>
                  <div class="d-flex my-3">
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star"></i>
                  </div>
                  <h4 class="mb-3">3.12 $</h4>
                  <a
                    href="#"
                    class="btn border border-secondary rounded-pill px-3 text-primary"
                    ><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                    cart</a
                  >
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-xl-4">
            <div class="p-4 rounded bg-light">
              <div class="row align-items-center">
                <div class="col-6">
                  <img
                    src="/client/img/best-product-2.jpg"
                    class="img-fluid rounded-circle w-100"
                    alt=""
                  />
                </div>
                <div class="col-6">
                  <a href="#" class="h5">Organic Tomato</a>
                  <div class="d-flex my-3">
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star"></i>
                  </div>
                  <h4 class="mb-3">3.12 $</h4>
                  <a
                    href="#"
                    class="btn border border-secondary rounded-pill px-3 text-primary"
                    ><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                    cart</a
                  >
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-xl-4">
            <div class="p-4 rounded bg-light">
              <div class="row align-items-center">
                <div class="col-6">
                  <img
                    src="/client/img/best-product-3.jpg"
                    class="img-fluid rounded-circle w-100"
                    alt=""
                  />
                </div>
                <div class="col-6">
                  <a href="#" class="h5">Organic Tomato</a>
                  <div class="d-flex my-3">
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star"></i>
                  </div>
                  <h4 class="mb-3">3.12 $</h4>
                  <a
                    href="#"
                    class="btn border border-secondary rounded-pill px-3 text-primary"
                    ><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                    cart</a
                  >
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-xl-4">
            <div class="p-4 rounded bg-light">
              <div class="row align-items-center">
                <div class="col-6">
                  <img
                    src="/client/img/best-product-4.jpg"
                    class="img-fluid rounded-circle w-100"
                    alt=""
                  />
                </div>
                <div class="col-6">
                  <a href="#" class="h5">Organic Tomato</a>
                  <div class="d-flex my-3">
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star"></i>
                  </div>
                  <h4 class="mb-3">3.12 $</h4>
                  <a
                    href="#"
                    class="btn border border-secondary rounded-pill px-3 text-primary"
                    ><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                    cart</a
                  >
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-xl-4">
            <div class="p-4 rounded bg-light">
              <div class="row align-items-center">
                <div class="col-6">
                  <img
                    src="/client/img/best-product-5.jpg"
                    class="img-fluid rounded-circle w-100"
                    alt=""
                  />
                </div>
                <div class="col-6">
                  <a href="#" class="h5">Organic Tomato</a>
                  <div class="d-flex my-3">
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star"></i>
                  </div>
                  <h4 class="mb-3">3.12 $</h4>
                  <a
                    href="#"
                    class="btn border border-secondary rounded-pill px-3 text-primary"
                    ><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                    cart</a
                  >
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-xl-4">
            <div class="p-4 rounded bg-light">
              <div class="row align-items-center">
                <div class="col-6">
                  <img
                    src="/client/img/best-product-6.jpg"
                    class="img-fluid rounded-circle w-100"
                    alt=""
                  />
                </div>
                <div class="col-6">
                  <a href="#" class="h5">Organic Tomato</a>
                  <div class="d-flex my-3">
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star"></i>
                  </div>
                  <h4 class="mb-3">3.12 $</h4>
                  <a
                    href="#"
                    class="btn border border-secondary rounded-pill px-3 text-primary"
                    ><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                    cart</a
                  >
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-6 col-xl-3">
            <div class="text-center">
              <img
                src="/client/img/fruite-item-1.jpg"
                class="img-fluid rounded"
                alt=""
              />
              <div class="py-4">
                <a href="#" class="h5">Organic Tomato</a>
                <div class="d-flex my-3 justify-content-center">
                  <i class="fas fa-star text-primary"></i>
                  <i class="fas fa-star text-primary"></i>
                  <i class="fas fa-star text-primary"></i>
                  <i class="fas fa-star text-primary"></i>
                  <i class="fas fa-star"></i>
                </div>
                <h4 class="mb-3">3.12 $</h4>
                <a
                  href="#"
                  class="btn border border-secondary rounded-pill px-3 text-primary"
                  ><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                  cart</a
                >
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-6 col-xl-3">
            <div class="text-center">
              <img
                src="/client/img/fruite-item-2.jpg"
                class="img-fluid rounded"
                alt=""
              />
              <div class="py-4">
                <a href="#" class="h5">Organic Tomato</a>
                <div class="d-flex my-3 justify-content-center">
                  <i class="fas fa-star text-primary"></i>
                  <i class="fas fa-star text-primary"></i>
                  <i class="fas fa-star text-primary"></i>
                  <i class="fas fa-star text-primary"></i>
                  <i class="fas fa-star"></i>
                </div>
                <h4 class="mb-3">3.12 $</h4>
                <a
                  href="#"
                  class="btn border border-secondary rounded-pill px-3 text-primary"
                  ><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                  cart</a
                >
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-6 col-xl-3">
            <div class="text-center">
              <img
                src="/client/img/fruite-item-3.jpg"
                class="img-fluid rounded"
                alt=""
              />
              <div class="py-4">
                <a href="#" class="h5">Organic Tomato</a>
                <div class="d-flex my-3 justify-content-center">
                  <i class="fas fa-star text-primary"></i>
                  <i class="fas fa-star text-primary"></i>
                  <i class="fas fa-star text-primary"></i>
                  <i class="fas fa-star text-primary"></i>
                  <i class="fas fa-star"></i>
                </div>
                <h4 class="mb-3">3.12 $</h4>
                <a
                  href="#"
                  class="btn border border-secondary rounded-pill px-3 text-primary"
                  ><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                  cart</a
                >
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-6 col-xl-3">
            <div class="text-center">
              <img
                src="/client/img/fruite-item-4.jpg"
                class="img-fluid rounded"
                alt=""
              />
              <div class="py-2">
                <a href="#" class="h5">Organic Tomato</a>
                <div class="d-flex my-3 justify-content-center">
                  <i class="fas fa-star text-primary"></i>
                  <i class="fas fa-star text-primary"></i>
                  <i class="fas fa-star text-primary"></i>
                  <i class="fas fa-star text-primary"></i>
                  <i class="fas fa-star"></i>
                </div>
                <h4 class="mb-3">3.12 $</h4>
                <a
                  href="#"
                  class="btn border border-secondary rounded-pill px-3 text-primary"
                  ><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                  cart</a
                >
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- SP bán chạy end -->

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
                  Lorem Ipsum is simply dummy text of the printing Ipsum has
                  been the industry's standard dummy text ever since the 1500s,
                </p>
              </div>
              <div class="d-flex align-items-center flex-nowrap">
                <div class="bg-secondary rounded">
                  <img
                    src="/client/img/testimonial-1.jpg"
                    class="img-fluid rounded"
                    style="width: 100px; height: 100px"
                    alt=""
                  />
                </div>
                <div class="ms-4 d-block">
                  <h4 class="text-dark">Client Name</h4>
                  <p class="m-0 pb-3">Profession</p>
                  <div class="d-flex pe-5">
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star"></i>
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
                  Lorem Ipsum is simply dummy text of the printing Ipsum has
                  been the industry's standard dummy text ever since the 1500s,
                </p>
              </div>
              <div class="d-flex align-items-center flex-nowrap">
                <div class="bg-secondary rounded">
                  <img
                    src="/client/img/testimonial-1.jpg"
                    class="img-fluid rounded"
                    style="width: 100px; height: 100px"
                    alt=""
                  />
                </div>
                <div class="ms-4 d-block">
                  <h4 class="text-dark">Client Name</h4>
                  <p class="m-0 pb-3">Profession</p>
                  <div class="d-flex pe-5">
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
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
                  Lorem Ipsum is simply dummy text of the printing Ipsum has
                  been the industry's standard dummy text ever since the 1500s,
                </p>
              </div>
              <div class="d-flex align-items-center flex-nowrap">
                <div class="bg-secondary rounded">
                  <img
                    src="/client/img/testimonial-1.jpg"
                    class="img-fluid rounded"
                    style="width: 100px; height: 100px"
                    alt=""
                  />
                </div>
                <div class="ms-4 d-block">
                  <h4 class="text-dark">Client Name</h4>
                  <p class="m-0 pb-3">Profession</p>
                  <div class="d-flex pe-5">
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
                    <i class="fas fa-star text-primary"></i>
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

    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/client/lib/easing/easing.min.js"></script>
    <script src="/client/lib/waypoints/waypoints.min.js"></script>
    <script src="/client/lib/lightbox/js/lightbox.min.js"></script>
    <script src="/client/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="/client/js/main.js"></script>
  </body>
</html>
