<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!--<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>                        
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}">TOKOSIDIA</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
<c:if test="${empty sessionScope.user}">
    <li><a href="${pageContext.request.contextPath}/login">Login</a></li>
    <li><a href="${pageContext.request.contextPath}/register">SignUp</a></li>

</c:if>
<c:if test="${not empty sessionScope.user}">
    <li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
    <li><a href="${pageContext.request.contextPath}/cart/show">Chart : ${cart.carts.size()}</a></li>
</c:if>

</ul>
</div>
</div>
</nav>-->

<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>                        
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}">TOKOSIDIA</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <c:if test="${empty sessionScope.user}">
                    <li><a href="${pageContext.request.contextPath}/login">Login</a></li>
                    <li><a href="${pageContext.request.contextPath}/register">SignUp</a></li>
                    </c:if>
                    <c:if test="${not empty sessionScope.user}">
                    <h1></h1>
                     <li><a >Welcome, ${user.username}</a></li>
                    <li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
                    <li><a href="${pageContext.request.contextPath}/cart/show"> <img src="<c:url value="/resources/images/spc.jpg.png" />" > : ${cart.carts.size()}</a></li>
                    </c:if> 
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">MORE
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Merchandise</a></li>
                        <li><a href="#">Extras</a></li>
                        <li><a href="#">Media</a></li> 
                    </ul>
                </li>
                <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
            </ul>
        </div>
    </div>
</nav>
