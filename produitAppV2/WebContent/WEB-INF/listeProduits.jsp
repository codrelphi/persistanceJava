<%@ include file="include/header.jsp" %>

    <!-- Begin page content -->
    <main role="main" class="container">
	     <div class="container">
		    <nav aria-label="breadcrumb">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="#">Home</a></li>
			    <li class="breadcrumb-item active" aria-current="page">Liste des Produits</li>
			  </ol>
			</nav>
			
			<a href="<%= request.getContextPath()%>/ajoutProduit"><button type="button" class="btn btn-primary btn-lg float-right mb-1" >
				<i class="fas fa-plus-square"></i> Ajouter
			</button></a>
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
				      	<button type="button" class="btn btn-warning" name="editer">
				      		<i class="fas fa-edit text-white"></i>
				      	</button>
				      	<button type="button" class="btn btn-warning" name="supprimer" onclick='supprimer("B1")'>
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
    
    <script>
		function supprimer(i) {
			alert(i);
			var url = "/produitAppV2/suppressionProduit?code=" + i;
			var xhr = new XMLHttpRequest();
			
			try {
				xhr.open("GET", url, false);
				xhr.send();
				var reponse = xhr.responseText;
				reponse = reponse.trim();
				/*var message = "Bonne année " + year + " à \"" + reponse + "\"."
				document.getElementById("resultat").innerHTML = reponse;*/
				
			}
			catch(e) {
				alert("Impossible de joindre de le serveur...");
			}
		}
			
    </script>
   
    
<%@ include file="include/footer.jsp" %>

 