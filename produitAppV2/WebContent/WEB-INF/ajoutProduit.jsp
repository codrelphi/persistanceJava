<%@ include file="include/header.jsp" %>

    <!-- Begin page content -->
    <main role="main" class="container">
	     <div class="container">
		    <nav aria-label="breadcrumb">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="#">Home</a></li>
			    <li class="breadcrumb-item active" aria-current="page">Ajouter un Produit</li>
			  </ol>
			</nav>
	     
			<form method="post" action="<%= request.getContextPath()%>/ajoutProduit">
			  <div class="form-group row">
			    <label for="code" class="col-sm-2 col-form-label">Code</label>
			    <div class="col-sm-3">
			      <input type="text" class="form-control" id="code" name="code">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="prix" class="col-sm-2 col-form-label">Prix</label>
			    <div class="col-sm-3">
			      <input type="number" step=".00" min="0" class="form-control" id="prix" name="prix" placeholder="100.50">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="code" class="col-sm-2 col-form-label">Description</label>
			    <div class="col-sm-8">
			      <input type="text" max="100" class="form-control" id="description" name="description">
			    </div>
			  </div>
			  <div class="row">
			  	<div class="col-sm-2"></div>
			  	<div class="col-sm-3">
			  		<button type="submit" class="btn btn-primary btn-md mr-1"><i class="fas fa-save"></i> Enregistrer</button>
			  		<button type="button" class="btn btn-secondary btn-md"><i class="fas fa-window-close"></i> Annuler</button>
			  	</div>
			  	<div class="col-sm-7"></div>
			  </div>
			</form>
			
			<div>
				<c:if test="${!empty msg }">
					<c:out value="${msg}"></c:out>
				</c:if>
			</div>
			
			
	     </div>
	    
    </main>
    
<%@ include file="include/footer.jsp" %>