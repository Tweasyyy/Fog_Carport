<html>
<head>
<!-- Bootstrap CSS -->
	<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/custom/radio.css">

<!-- FontAwesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

<title>Design-Selv Carport</title>
</head>
<body>

<!-- Script til at enten skrive selv eller at vælge standard carport -->

<script>
      function change(type){
	  
	  // Enkelt carport med rejsning
	  
		  if (type == 1) {
		  document.getElementById("inputLength").value="360";
		  document.getElementById("inputWidth").value="540";
		  document.getElementById("inputHeight").value="300";
		  document.getElementById("rejsning").checked="checked"; // Vælger Taget til at være fladt/rejsning
		  }
		
		
	  // Enkelt caport med fladt tag
		  
		  if (type == 2) {
		  document.getElementById("inputLength").value="300";
		  document.getElementById("inputWidth").value="480";
		  document.getElementById("inputHeight").value="225";
		  document.getElementById("fladt").checked="checked"; // Vælger Taget til at være fladt/rejsning
		  }
	  
	  // Dobbelt caport med rejsning
		  
		  if (type == 3) {
		  document.getElementById("inputLength").value="600";
		  document.getElementById("inputWidth").value="870";
		  document.getElementById("inputHeight").value="380";
		  document.getElementById("rejsning").checked="checked"; // Vælger Taget til at være fladt/rejsning
		  }
		  
	  // Dobbelt carport med fladt tag
	  
		  if (type == 4) {
		  document.getElementById("inputLength").value="600";
		  document.getElementById("inputWidth").value="480";
		  document.getElementById("inputHeight").value="225";
		  document.getElementById("fladt").checked="checked"; // Vælger Taget til at være fladt/rejsning
		  }
		  
      }
	  
	 function calculatePrice() {
		  var length = (document.getElementById("inputLength").value / 100);
		  var height = (document.getElementById("inputHeight").value / 100);
		  var width = (document.getElementById("inputWidth").value / 100);
		  
		  var sqrm = length * height * width;
		  
		  var priceSqrm = sqrm * 130;
		  
		  var handling = 1200;
		  
		  var totalPrice = priceSqrm + handling;
		  
		  if (totalPrice > 40000) {
			totalPrice = 40000;
		  }
		  
		  var finalPrice = parseFloat(totalPrice).toFixed(2);
		  
		  document.getElementById("priceTag").innerHTML = finalPrice + " kr";
		  
		  // Sætter tabellens indhold
		  
		  document.getElementById("tableLength").innerHTML = length;
		  document.getElementById("tableHeight").innerHTML = height;
		  document.getElementById("tableWidth").innerHTML = width;
		  
		  if (document.getElementById("fladt").checked) {
			document.getElementById("tableRoof").innerHTML = "Fladt";
		  } else {
			document.getElementById("tableRoof").innerHTML = "Rejsning";
		  }
		  
		  
	 }

</script>


<!-- Menu / Navigation -->

<nav class="navbar navbar-default navbar-expand navbar-light bg-light">
  
  <a class="navbar-brand" href="index.jsp" style="padding-left: 4px;">
  <img src="https://www.johannesfog.dk/globalassets/header/logo.png" style="height: 50px;wdith: 50px" class="">
  Carport</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="nav nav-pills mx-auto" id="pills-tab" role="tablist"><li class="nav-item" style="padding-left:20px;padding-right:20px;">
        <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true" >1. Dimensioner</a>
      </li>
      <li class="nav-item" style="padding-left:20px;padding-right:20px;">
        <a class="nav-link" id="pills-profile-tab"  href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false"" data-toggle="pill" >2. Taget</a>
      </li>
      <li class="nav-item" style="padding-left:20px;padding-right:20px;">
        <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false" >3. Materiale</a>
      </li>
	  <li class="nav-item" style="padding-left:20px;padding-right:20px;"> <!-- Denne knap er gemt væk -->
	    <a class="nav-link" id="pills-afslut-tab"  href="#pills-afslut" role="tab" aria-controls="pills-afslut" aria-selected="false" data-toggle="pill" hidden="true"></a>
	  </li>
    </ul>
	<ul class="navbar-nav float-right">
	  <li class="nav-item">
        <a class="nav-link" href="index.jsp">Afslut</a>
      </li>
	</ul>
  </div>
</nav>

<!-- Indhold -->

<!-- Start of form -->

		<form action="#" method="post">
   
		<!-- Tab Content -->
		
	  <div class="tab-content" id="pills-tabContent">
	  
	  <!-- Dimensioner -->
	  
		<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
		

		<div class="container-fluid">
		  <div class="row">
		
			<!-- Venstre -->
			
			<div class="col col-lg-8">
		
			<div class="card" style="max-height:90%;margin-top:15px;">
			  <img src="https://i.imgur.com/4Iv7hYz.jpg" class="card-img-top" alt="..." style="max-height:400px;">
			  <div class="card-body">
				<h5 class="card-title">Din Carport</h5>
				<p class="card-text">Det er vigtigt at finde ud af hvilken størrelse din carport skal være, det har selvfølgelig betydning for den plads du har brug for. Har du en bil så er den nødvendige længde mindre end hvis du har to biler. Hvis du har brug for hjælp til at bestemme dimensionerne på din carport er vi mere end glade for at høre fra jer.</p>
			  </div>
			  <ul class="list-group list-group-flush">
				<li class="list-group-item"><a href="mailto:info@johannesfog.dk"><i class="fa fa-envelope"></i> info@johannesfog.dk</a></li>
				<li class="list-group-item"><a href="tel:+4545871001"><i class="fa fa-phone"></i> +45 45 87 10 01</a></li>
				<li class="list-group-item">Tjek vores standard carporte ud for bedre overblik</li>
			  </ul>
			  <div class="card-body">
				<a href="#" class="card-link">Gå til standard carporte</a>
				<a href="tel:+4545871001" class="card-link">Ring nu</a>
			  </div>
			</div>
			
			</div>
			
			<!-- Højre -->
			
			<div class="col col-lg-4" style="background-color: #eae9e9;height:90%;">
					
			<br>
			<center>
				<label><b>Vælg type fra standard</b></label>
					<div class="cc-selector">
						<!-- Standard 1 -->
						<button onclick="change(1)" hidden><input id="standard1" type="radio" name="standard-carport" value="standard1" /></button>
						<label class="drinkcard-cc standard1" for="standard1"></label>
						
						<!-- Standard 2 -->
						<button onclick="change(2)" hidden><input id="standard2" type="radio" name="standard-carport" value="standard2" /></button>
						<label class="drinkcard-cc standard2"for="standard2"></label>
						<br>
						<!-- Standard 3 -->
						<button onclick="change(3)" hidden><input id="standard3" type="radio" name="standard-carport" value="standard3" /></button>
						<label class="drinkcard-cc standard3"for="standard3"></label>
						
						<!-- Standard 4 -->
						<button onclick="change(4)" hidden><input id="standard4" type="radio" name="standard-carport" value="standard4" /></button>
						<label class="drinkcard-cc standard4"for="standard4"></label>
					</div>
					
					
					
			
			<hr/>
			
			<i>eller skriv selv dine egne mål</i>
			
			<hr/>
			
			</center>


			<label class="">Længde:</label>
			<div class="input-group mb-2">
			
				<input type="text" class="form-control" id="inputLength" placeholder="F.eks. 450">
				
				<div class="input-group-prepend">
				  <div class="input-group-text">
					cm
				  </div>
				</div>
			</div>
			
			<label class="">Bredde:</label>
			<div class="input-group mb-2">
			
				<input type="text" class="form-control" id="inputWidth" placeholder="F.eks. 200">
				
				<div class="input-group-prepend">
				  <div class="input-group-text">
					cm
				  </div>
				</div>
			</div>
			
			<label class="">Højde:</label>
			<div class="input-group mb-2">
			
				<input type="text" class="form-control" id="inputHeight" placeholder="F.eks. 220">
				
				<div class="input-group-prepend">
				  <div class="input-group-text">
					cm
				  </div>
				</div>
			</div>
	
	
		<br><br>
		<div class="float-right" style="vertical-align:bottom;">
			<button type="button" class="btn btn-primary" onclick="document.getElementById('pills-profile-tab').click()">Næste</button>
		</div>

	</div>
			
			
			</div>
			</div>
		</div>
		  
		  
		  <!-- Taget -->
		  
		  <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
			
			<div class="container-fluid">
		  <div class="row">
		
			<!-- Venstre -->
			
			<div class="col col-lg-8">
		
			<div class="card" style="max-height:90%;margin-top:15px;">
			  <img src="https://i.imgur.com/ZzUXywV.png" class="card-img-top" alt="..." style="max-height:400px;">
			  <div class="card-body">
				<h5 class="card-title">Høj rejsning eller fladt tag?</h5>
				<p class="card-text">Om du vil have fladt tag eller have et tag med en rejsning er helt op til dig, men elementerne i carporten spiller normalt en stor rolle for hvilken man bruger. Der kan tit være sammenhæng mellem en carports garage eller vedliggende redskabsskur og carportens tag. I langt de fleste tilfælde vil man se at der bruges fladt tag til en carport bl.a. fordi det er billigere. </p>
			  </div>
			  <ul class="list-group list-group-flush">
				<li class="list-group-item">Mail: <a href="mailto:info@johannesfog.dk">info@johannesfog.dk</a></li>
				<li class="list-group-item">Telefon: +45 45 87 10 01</li>
				<li class="list-group-item">Tjek vores standard carporte ud for bedre overblik</li>
			  </ul>
			  <div class="card-body">
				<a href="#" class="card-link">Gå til standard carporte</a>
				<a href="tel:+4545871001" class="card-link">Ring nu</a>
			  </div>
			</div>
			
			</div>
			
			<!-- Højre -->
			
			<div class="col col-lg-4" style="background-color: #eae9e9;height:90%;">
					
			<br>
			<center>
				<label>Vælg tagtype</label>
			<div class="cc-selector">
				<input id="fladt" type="radio" name="credit-card" value="fladt" checked="checked" />
				<label class="drinkcard-cc fladt" for="fladt"></label>
				<input id="rejsning" type="radio" name="credit-card" value="rejsning" />
				<label class="drinkcard-cc rejsning"for="rejsning"></label>
			</div>
			</center>
	
		<br><br>
		<div class="float-right" style="vertical-align:bottom;">
			<button type="button" class="btn btn-light" onclick="document.getElementById('pills-home-tab').click()">Tilbage</button>
			<button type="button" class="btn btn-primary" onclick="document.getElementById('pills-contact-tab').click()">Næste</button>
		</div>

	</div>
			
			
			</div>
			</div>
			
		  </div>
		  
		  <!-- Materialer -->
		  
		  <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
			
			<div class="container-fluid">
		  <div class="row">
		
			<!-- Venstre -->
			
			<div class="col col-lg-8">
		
			<div class="card" style="max-height:90%;margin-top:15px;">
			  <img src="https://i.imgur.com/4Iv7hYz.jpg" class="card-img-top" alt="..." style="max-height:400px;">
			  <div class="card-body">
				<h5 class="card-title">Høj rejsning eller fladt tag?</h5>
				<p class="card-text">Om du vil have fladt tag eller have et tag med en rejsning er helt op til dig, men elementerne i carporten spiller normalt en stor rolle for hvilken man bruger. Der kan tit være sammenhæng mellem en carports garage eller vedliggende redskabsskur og carportens tag. I langt de fleste tilfælde vil man se at der bruges fladt tag til en carport bl.a. fordi det er billigere. </p>
			  </div>
			  <ul class="list-group list-group-flush">
				<li class="list-group-item">Mail: <a href="mailto:info@johannesfog.dk">info@johannesfog.dk</a></li>
				<li class="list-group-item">Telefon: +45 45 87 10 01</li>
				<li class="list-group-item">Tjek vores standard carporte ud for bedre overblik</li>
			  </ul>
			  <div class="card-body">
				<a href="#" class="card-link">Gå til standard carporte</a>
				<a href="tel:+4545871001" class="card-link">Ring nu</a>
			  </div>
			</div>
			
			</div>
			
			<!-- Højre -->
			
			<div class="col col-lg-4" style="background-color: #eae9e9;height:90%;">
					
			<br>
			<label class="">Længde:</label>
			<div class="input-group mb-2">
			
				<input type="text" class="form-control" id="inlineFormInputGroup" placeholder="F.eks. 450">
				
				<div class="input-group-prepend">
				  <div class="input-group-text">
					cm
				  </div>
				</div>
			</div>
			
			<label class="">Bredde:</label>
			<div class="input-group mb-2">
			
				<input type="text" class="form-control" id="inlineFormInputGroup" placeholder="F.eks. 200">
				
				<div class="input-group-prepend">
				  <div class="input-group-text">
					cm
				  </div>
				</div>
			</div>
			
			<label class="">Højde:</label>
			<div class="input-group mb-2">
			
				<input type="text" class="form-control" id="inlineFormInputGroup" placeholder="F.eks. 220">
				
				<div class="input-group-prepend">
				  <div class="input-group-text">
					cm
				  </div>
				</div>
			</div>
	
	
		<br><br>
		<div class="float-right" style="vertical-align:bottom;">
			<button type="button" class="btn btn-light" onclick="document.getElementById('pills-profile-tab').click()">Tilbage</button>
			<button type="button" class="btn btn-success" onclick="calculatePrice();document.getElementById('pills-afslut-tab').click()">Bestil</button>
		</div>

	</div>
			
			
			</div>
			</div>
			
		  </div>
		  
		  
		  <!-- Afslut -->
	  
		<div class="tab-pane fade" id="pills-afslut" role="tabpanel" aria-labelledby="pills-afslut-tab">
		

		<div class="container-fluid">
		  <div class="row">
		
			<!-- Venstre -->
			
			<div class="col col-lg-8">
			
				<br>
				
			<div class="card" style="">
					 <div class="card-header text-center bg-light">
						<div class="row align-items-center">
							<div class="col-md-12">
								<h5>Hvordan kontakter vi dig?</h5>
							</div>
						</div>
					 </div>
						<div class="card-body">
						
						<span>Vi vil hjertelig gerne hjælpe dig med at færdiggøre din bestilling, indtast venligst dine oplysninger og så sørger vi for at kontakte dig omkring det endelige bud.</span> 
						
						<br>
						<br>
							<form>
							  <div class="form-group row">
								<label for="email" class="col-sm-2 col-form-label">Email</label>
								<div class="col-sm-4">
								  <input type="text" class="form-control" id="email" value="email@example.com">
								</div>
							  </div>
							  <div class="form-group row">
								<label for="navn" class="col-sm-2 col-form-label">Navn</label>
								<div class="col-sm-4">
								  <input type="text" class="form-control" id="navn" placeholder="Fornavn Efternavn">
								</div>
							  </div>
							  <div class="form-group row">
								<label for="adresse" class="col-sm-2 col-form-label">Adresse</label>
								<div class="col-sm-4">
								  <input type="text" class="form-control" id="adresse" placeholder="vejnavn nr">
								</div>
							  </div>
							  <div class="form-group row">
								<label for="by" class="col-sm-2 col-form-label">Postnummer og by</label>
								<div class="col-sm-4">
								  <input type="text" class="form-control" id="by" placeholder="postnummer by">
								</div>
							  </div>
							  <div class="form-group row">
								<label for="telefon" class="col-sm-2 col-form-label">Telefon</label>
								<div class="col-sm-4">
								  <input type="text" class="form-control" id="telefon" placeholder="telefon nr">
								</div>
							  </div>
							  <div class="form-group row">
								<div style="margin-left: 18px;">
									<input type="submit" class="btn btn-primary" value="Indsend oplysninger">
								</div>
							  </div>
							  <div class="form-group row">
								<div style="margin-left: 18px;">
								    <small>Når du indsender oplysninger, så indsender du samtidig din carports oplysninger.</small>
								</div>
							  </div>
							</form>
						</div>
					</div>
			
			</div>
			
			<!-- Højre -->
			
			<div class="col col-lg-4" style="background-color: #eae9e9;height:90%;">
					<br>
					
			<div class="card">
				<div class="card-header">
					<span><b>Nuværende valg</b></span>
				</div>
				<div class="card-body">
				  <div class="table-responsive">
						<table class="table table-striped" style="text-align:center">
						  <thead class="" style="background-color: #7b7b7b; color: #fff">
							<tr>
							  <th scope="col">Længde</th>
							  <th scope="col">Højde</th>
							  <th scope="col">Bredde</th>
							  <th scope="col">Tagtype</th>
							  <th scope="col">Materiale</th>
							</tr>
						  </thead>
						  <tbody>
							<tr>
							  <td id="tableLength">150 cm</td>
							  <td id="tableHeight">150 cm</td>
							  <td id="tableWidth">200 cm</td>
							  <td id="tableRoof">Rejsning</td>
							  <td id="tableMaterial">Egetræ</td>
							</tr>
						  </tbody>
						</table>
					</div>
				</div>
			</div>
			
			<br><br>
			
			<center>
			<span><h5>Pris i alt</h5></span>
			<span style="color: green"><h4 id="priceTag"></h4></span>
			<small><i>Bemærk! Dette er blot et forslag til prisen, og denne aftales og betales først ved senere aftale med afdelingen.</i></small>
			</center>
			
		<br><br>
		<div style="vertical-align:bottom;">
			<button type="button" class="btn btn-light" onclick="document.getElementById('pills-contact-tab').click()" style="width:100%;">Tilbage</button>
		</div>

	</div>
			
			
			</div>
			</div>
		</div>
		  
	  </div>
    </div>
	

<!-- End of form -->

</form>

<!-- Footer -->

	<footer class="footer fixed-bottom" style="background-color: #f8f9fa!important;min-height:40px;padding:auto;margin:auto;">
      <div class="container text-center" style="margin-top:7px;">
        <span class="text-muted">Copyright &copy Alle rettigheder forbeholdes Rush B 2019</span>
      </div>
    </footer>

<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>