<%-- 
    Document   : welcome
    Created on : Dec 16, 2017, 8:46:28 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
        <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
        <title>JSP Page</title>
        <style>
            body {
                font: 400 15px/1.8 Lato, sans-serif;
                color: #777;
            }
            h3, h4 {
                margin: 10px 0 30px 0;
                letter-spacing: 10px;      
                font-size: 20px;
                color: #111;
            }
            .container {
                padding: 80px 120px;
            }
            .person {
                border: 10px solid transparent;
                margin-bottom: 25px;
                width: 80%;
                height: 80%;
                opacity: 0.7;
            }
            .person:hover {
                border-color: #f1f1f1;
            }
            .carousel-inner img {
                -webkit-filter: grayscale(90%);
                filter: grayscale(90%); /* make all photos black and white */ 
                width: 100%; /* Set width to 100% */
                margin: auto;
            }
            .carousel-caption h3 {
                color: #fff !important;
            }
            @media (max-width: 600px) {
                .carousel-caption {
                    display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
                }
            }
            .bg-1 {
                background: #2d2d30;
                color: #bdbdbd;
            }
            .bg-1 h3 {color: #fff;}
            .bg-1 p {font-style: italic;}
            .list-group-item:first-child {
                border-top-right-radius: 0;
                border-top-left-radius: 0;
            }
            .list-group-item:last-child {
                border-bottom-right-radius: 0;
                border-bottom-left-radius: 0;
            }
            .thumbnail {
                padding: 0 0 15px 0;
                border: none;
                border-radius: 0;
            }
            .thumbnail p {
                margin-top: 15px;
                color: #555;
            }
            .btn {
                padding: 10px 20px;
                background-color: #333;
                color: #f1f1f1;
                border-radius: 0;
                transition: .2s;
            }
            .btn:hover, .btn:focus {
                border: 1px solid #333;
                background-color: #fff;
                color: #000;
            }
            .modal-header, h4, .close {
                background-color: #333;
                color: #fff !important;
                text-align: center;
                font-size: 30px;
            }
            .modal-header, .modal-body {
                padding: 40px 50px;
            }
            .nav-tabs li a {
                color: #777;
            }
            #googleMap {
                width: 100%;
                height: 400px;
                -webkit-filter: grayscale(100%);
                filter: grayscale(100%);
            }  
            .navbar {
                font-family: Montserrat, sans-serif;
                margin-bottom: 0;
                background-color: #2d2d30;
                border: 0;
                font-size: 11px !important;
                letter-spacing: 4px;
                opacity: 0.9;
            }
            .navbar li a, .navbar .navbar-brand { 
                color: #d5d5d5 !important;
            }
            .navbar-nav li a:hover {
                color: #fff !important;
            }
            .navbar-nav li.active a {
                color: #fff !important;
                background-color: #29292c !important;
            }
            .navbar-default .navbar-toggle {
                border-color: transparent;
            }
            .open .dropdown-toggle {
                color: #fff;
                background-color: #555 !important;
            }
            .dropdown-menu li a {
                color: #000 !important;
            }
            .dropdown-menu li a:hover {
                background-color: red !important;
            }
            footer {
                background-color: #2d2d30;
                color: #f5f5f5;
                padding: 32px;
            }
            footer a {
                color: #f5f5f5;
            }
            footer a:hover {
                color: #777;
                text-decoration: none;
            }  
            .form-control {
                border-radius: 0;
            }
            textarea {
                resize: none;
            }

            div.gallery {
                margin: 5px;
                border: 1px solid #ccc;
                float: left;
                width: 180px;
            }

            div.gallery:hover {
                border: 1px solid #777;
            }

            div.gallery img {
                width: 100%;
                height: auto;
            }

            div.desc {
                padding: 15px;
                text-align: center;
            }
        </style>
    </head>
    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
        <jsp:include page="head.jsp"/> 


        <div class="container-fluid bg-1 text-center">
            <h3>Why TOKOSIDIA ?</h3>
            <img src="<c:url value="/resources/images/Exia.jpg" />" class="img-responsive img-circle" style="display:inline" alt="Bird" width="400" height="400">
            <h3>Under Maintenance!!!</h3>
        </div>

        <div class="container-fluid bg-2 text-center">
            <h1>PRODUCT</h1>
          

        <table class="container-fluid bg-2 text-right">
            <thead>
                <tr>
                    <th></th>
                    <th></th>


                </tr>
            </thead>

            <tr>
                <td>            <div class="responsive">
                        <div class="gallery">
                            <a href="#">
                                <img src="<c:url value="/resources/images/4.jpg" />" alt="Trolltunga Norway" width="300" height="200">
                            </a>
                            <div class="desc">GUNDAM ZERO</div>
                        </div>
                    </div></td>
                <td>            <div class="responsive">
                        <div class="gallery">
                            <a href="${pageContext.request.contextPath}/product/all">
                                <img src="<c:url value="/resources/images/1.jpg" />" alt="Trolltunga Norway" width="300" height="200">
                            </a>
                            <div class="desc">GUNDAM EXIA</div>
                        </div>
                    </div></td>
                                    <td>            <div class="responsive">
                        <div class="gallery">
                            <a href="#">
                                <img src="<c:url value="/resources/images/5.jpg" />" alt="Trolltunga Norway" width="300" height="200">
                            </a>
                            <div class="desc">GUNDAM ASTRAY</div>
                        </div>
                    </div></td>
            </tr>      
        </table>
 </div>
        <footer class="text-center">
            <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
                <span class="glyphicon glyphicon-chevron-up"></span>
            </a><br><br>
            <p>Bootstrap Theme Made By <a href="https://www.w3schools.com" data-toggle="tooltip" title="Visit w3schools">www.w3schools.com</a></p> 
        </footer>
    </body>
</html>
