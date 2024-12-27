<%@page contentType="text/html" pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib
uri="http://sargue.net/jsptags/time" prefix="javatime" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="Laptop shop" />
    <meta name="author" content="Quoc Trieu" />
    <title>Admin Dashboard</title>
    <link
      href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
      rel="stylesheet"
    />
    <link href="/css/styles.css" rel="stylesheet" />
    <script
      src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <body class="sb-nav-fixed">
    <jsp:include page="../layout/header.jsp" />
    <div id="layoutSidenav">
      <jsp:include page="../layout/sidebar.jsp" />
      <div id="layoutSidenav_content">
        <main>
          <div class="container-fluid px-4">
            <div class="row pt-4">
              <div class="col-sm-4">
                <h1>Order Detail</h1>
                <ol class="breadcrumb mb-4">
                  <li class="breadcrumb-item">
                    <a href="/admin/order">Orders</a>
                  </li>
                  <li class="breadcrumb-item active">Detail</li>
                </ol>
              </div>
              <div class="col-sm-8">
                <div class="row">
                  <div class="col-sm-auto col-12">
                    <div class="fw-bold">ID: ${order.id}</div>
                    <div>
                      <b>Date:</b>
                      <javatime:format
                        value="${order.date}"
                        pattern="dd/MM/yyyy HH:mm"
                      />
                    </div>
                    <div><b>Payment method:</b> ${order.paymentMethod}</div>
                    <div><b>Payment ref:</b> ${order.paymentRef}</div>
                    <div><b>Payment status:</b> ${order.paymentStatus}</div>
                  </div>
                  <div class="col-sm col-12">
                    <div class="row g-1">
                      <div class="col-auto"><b>Customer:</b></div>
                      <div class="col">${order.receiverName}</div>
                    </div>
                    <div><b>Email:</b> ${order.user.email}</div>
                    <div><b>Phone:</b> ${order.receiverPhone}</div>
                    <div class="row g-1">
                      <div class="col-auto"><b>Addr:</b></div>
                      <div class="col">${order.receiverAddress}</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <hr />
            <div class="dropdown ms-auto my-3" style="width: 130px">
              <button
                class="btn dropdown-toggle order-status fw-semibold w-100"
                type="button"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                ${order.status}
              </button>
              <ul class="dropdown-menu dropdown-menu-dark">
                <li>
                  <button class="btn dropdown-item" data-status="PENDING">
                    PENDING
                  </button>
                </li>
                <li>
                  <button class="btn dropdown-item" data-status="SHIPPING">
                    SHIPPING
                  </button>
                </li>
                <li>
                  <button class="btn dropdown-item" data-status="COMPLETE">
                    COMPLETE
                  </button>
                </li>
                <li>
                  <button class="btn dropdown-item" data-status="CANCEL">
                    CANCEL
                  </button>
                </li>
              </ul>
            </div>
            <table class="table table-hover table-bordered">
              <thead>
                <tr class="text-center">
                  <th style="width: 130px">Product</th>
                  <th class="w-50">Name</th>
                  <th>Size</th>
                  <th class="text-nowrap">Unit Price</th>
                  <th>Qty</th>
                  <th>Total</th>
                </tr>
              </thead>
              <tbody class="table-group-divider">
                <c:forEach var="item" items="${order.orderDetails}">
                  <tr>
                    <td>
                      <img
                        src="/images/product/${item.product.image}"
                        alt=""
                        class="img-fluid rounded"
                        style="object-fit: cover"
                      />
                    </td>
                    <td class="">
                      <p>
                        <a href="/admin/product/${item.product.id}"
                          >${item.product.name}</a
                        >
                      </p>
                      <div>
                        <span><b>Brand:</b> ${item.product.brand.name}</span>
                        <br />
                        <span
                          ><b>Category:</b> ${item.product.category.name}</span
                        >
                      </div>
                    </td>
                    <td class="text-center">${item.size.name}</td>
                    <td class="text-center text-nowrap">
                      <fmt:formatNumber
                        type="number"
                        value="${item.productPrice}"
                      />
                      đ
                    </td>
                    <td class="text-center px-3">${item.quantity}</td>
                    <td class="text-center text-nowrap">
                      <fmt:formatNumber type="number" value="${item.price}" />
                      đ
                    </td>
                  </tr>
                </c:forEach>
                <tr>
                  <td colspan="4">
                    <p class="mb-1 fw-bold">Notes:</p>
                    ${order.notes}
                  </td>
                  <td class="text-center align-content-center">${order.sum}</td>
                  <td
                    class="text-center text-nowrap fw-bold fs-4 align-content-center"
                  >
                    <fmt:formatNumber
                      type="number"
                      value="${order.totalPrice}"
                    />
                    đ
                  </td>
                </tr>
              </tbody>
            </table>
            <a href="/admin/order" class="btn btn-success my-3">Back</a>
          </div>
        </main>
        <jsp:include page="../layout/footer.jsp" />
      </div>
    </div>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
    <!-- <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      crossorigin="anonymous"
    ></script> -->
    <script src="/js/scripts.js"></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
      integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    ></script>

    <script>
      $(document).ready(function () {
        const statusBtn = $(".order-status.dropdown-toggle");
        setStateColor(statusBtn);

        $.ajaxSetup({
          headers: {
            "${_csrf.headerName}": "${_csrf.token}",
          },
        });

        $("[data-status]").click(function () {
          const status = $(this).attr("data-status");
          $.post(
            "/admin/order/update",
            { orderId: "${order.id}", status: status },
            function ({ orderId, status }) {
              statusBtn.text(status);
              setStateColor(statusBtn);
            }
          );
        });
      });

      function setStateColor(toggle) {
        const status = toggle.text().trim();
        toggle.removeClass("btn-primary btn-warning btn-success btn-danger");
        switch (status) {
          case "PENDING":
            toggle.addClass("btn-primary");
            break;
          case "SHIPPING":
            toggle.addClass("btn-warning");
            break;
          case "COMPLETE":
            toggle.addClass("btn-success");
            break;
          case "CANCEL":
            toggle.addClass("btn-danger");
            break;
          default:
        }
      }
    </script>
  </body>
</html>