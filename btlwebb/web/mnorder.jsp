<%@page import="dal.PaymentDAO"%>
<%@page import="model.Payment"%>
<%@ page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style-mnoder.css">
    <title>Order Management</title>
    <link rel="icon" href="images/logoboohoo.png">
    
    <style>
        /* Thêm CSS cho phần tử chi tiết sản phẩm */
        #product-details {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 687px;
            height: 285px;
            background-color: #fff;
            padding: 20px;
            z-index: 9999;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            overflow: auto;
        }
        
        #product-details .close-button {
            position: absolute;
            top: 10px;
            right: 10px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <h3 style="text-align: center; font-size: 1.8rem;"><a>Quản lý đơn hàng</a></h3>
    <table class="product-table">
        <thead>
            <tr>
                <th>ID</th>
                <th>TÊN KHÁCH HÀNG</th>
                <th>EMAIL</th>
                <th>SỐ ĐIỆN THOẠI</th>
                <th>ĐỊA CHỈ</th>
                <th>SẢN PHẨM</th>
                <th>TỔNG GIÁ</th>
                <th>TÌNH TRẠNG </th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${order}" var="x">
                <tr class="product-row">
                    <td>${x.id}</td>
                    <td>${x.name}</td>
                    <td>${x.email}</td>
                    <td>${x.phone}</td>
                    <td>${x.address}</td>
                    <td>
                        <!-- Thêm onclick để hiển thị/ẩn chi tiết sản phẩm -->
                        <div id="toggle-button-${x.id}"onclick="toggleProductDetails('${x.id}')" style="cursor: pointer;color: orange">Xem chi tiết</div>
                        <div id="product-details-${x.id}" style="display: none;"> <!-- Thêm id cho phần tử chi tiết sản phẩm -->
                            <c:forEach var="product" items="${x.products}">
                                <div style="line-height: 1.5;padding-bottom: 3px">${product}</div>
                            </c:forEach>
                        </div>
                    </td>
                    <td>${x.total}</td>
                    <td>${x.status}</td>
                    <td>
                        <a href="confirm?id=${x.id}" class="button edit-button" style="margin-bottom: 6px;">Confirm</a>
                        <a href="" class="button delete-button">Cancel</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <script src="https://code.jquery.com/jquery-2.2.4.js"></script>
    <script>
        function toggleProductDetails(id) {
            var productDetails = document.getElementById('product-details-' + id);
            var toggleButton = document.getElementById('toggle-button-' + id);

            if (productDetails.style.display === 'none') {
                productDetails.style.display = 'block';
                toggleButton.textContent = 'Ấn để ẩn';
            } else {
                productDetails.style.display = 'none';
                toggleButton.textContent = 'Xem chi tiết';
            }
        }

        console.log("Xoá");
        $(".edit-button").click(function (event) {
            event.preventDefault();
            if (confirm("Bạn có muốn xác nhận đơn hàng này không?")) {
                var link = $(this).attr('href');
                window.location = link;
            } else {
                console.log("Huỷ");
            }
        });
    </script>
</body>
</html>
