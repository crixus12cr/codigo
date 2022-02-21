<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FerreW Store</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/a1f1189753.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <!-- navegador -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">FerreW Store</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Controlador?accion=home">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Ofertas del dia</a>
        </li>
        
        <li class="nav-item">
            <a class="nav-link" href="Controlador?accion=Carrito" ><i class="fas fa-cart-plus">(<label style="color: chartreuse">${contador}</label>)</i> Carrito</a>
        </li>
        
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
      <ul class="navbar-nav">
      	<li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Iniciar Sesion
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
      	
      </ul>
    </div>
  </div>
</nav>
<!--Body-->
<div class="container mt-4">
	
    <div class="row">
            <c:forEach var="p" items="${productos}">
		<div class="col-sm-4">
			<div class="card">
				<div class="card-header">
					<label> ${p.getNombres()} </label>
				</div>
				<div class="card-body"> 
                                    <i>$ ${p.getPrecio()}</i>
				<img alt="" src="${p.getFoto()}" width="200" height="180">
				</div>
				<div class="card-footer text-center">
				<label>${p.descripcion}</label>
					<div>
					<a href="Controlador?accion=AgregarCarrito&id=${p.getId()}" class="btn btn-outline-info">Agregar al Carrito</a>
					<a href="Controlador?accion=Comprar&id=${p.getId()}" class="btn btn-danger">Comprar</a>
					</div>
				</div>
			</div>
		</div>
            </c:forEach>
    </div>
	

</div>
        
        
        
        

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
