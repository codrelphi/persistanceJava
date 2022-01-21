<!Doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="template/lib/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="template/css/sticky-footer-navbar.css">
    <link rel="stylesheet" href="template/lib/fontawesome/css/all.min.css">

    <title>produitAppV2 - Gestion de Produits</title>
  </head>
  <body>
  
	<header>
      <!-- Fixed navbar -->
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-primary">
        <a class="navbar-brand" href="#">produitApp</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
            </li>
          </ul>
          <form class="form-inline mt-2 mt-md-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
          </form>
        </div>
      </nav>
    </header>

    <!-- Begin page content -->
    <main role="main" class="container">
	     <div class="container">
		    <nav aria-label="breadcrumb">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="#">Home</a></li>
			    <li class="breadcrumb-item active" aria-current="page">Liste</li>
			  </ol>
			</nav>
	     	<table class="table table-striped table-bordered">
			  <thead>
			    <tr class="bg-primary text-white text-center">
			      <th class="col-md-2">Code</th>
			      <th class="col-md-5">Description</th>
			      <th class="col-md-3">Prix</th>
			      <th class="col-md-2">Action</th>
			    </tr>
			  </thead>
			  <tbody>
				  <c:forEach var="i" begin="0" end="${ produits.size()-1 }" step="1">
					<tr>
				      <td>${produits[i].getCode()}</td>
				      <td>${produits[i].getDescription()}</td>
				      <td>${produits[i].getPrix()}</td>
				      <td class="text-center">
				      	<button type="button" class="btn btn-warning">
				      		<i class="fas fa-edit text-white"></i>
				      	</button>
				      	<button type="button" class="btn btn-warning">
				      		<i class="far fa-trash-alt text-white"></i>
				      	</button>
				      	
				      </td>
				    </tr>
				  </c:forEach>
			  </tbody>
			</table>
			<nav aria-label="..." class="float-right">
			  <ul class="pagination">
			    <li class="page-item disabled">
			      <a class="page-link" href="#" tabindex="-1">Previous</a>
			    </li>
			    <li class="page-item active"><a class="page-link" href="#">1</a></li>
			    <li class="page-item">
			      <a class="page-link" href="#">2</a>
			    </li>
			    <li class="page-item"><a class="page-link" href="#">3</a></li>
			    <li class="page-item">
			      <a class="page-link" href="#">Next</a>
			    </li>
			  </ul>
			</nav>
	     </div>
    </main>

    <footer class="footer">
      <div class="container">
        <span class="text-muted">produitAppV2 by NiceJavaTeam - Copyrights @ 2022</span>
      </div>
    </footer>
	
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="template/lib/jquery/jquery-3.2.1.slim.min.js"></script>
    <script src="template/lib/popper/popper.min.js"></script>
    <script src="template/lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="template/lib/fontawesome/js/all.min.js"></script>
  </body>
</html>