<section>
	<div class="container">
		<h1 class="text-center">Catálogo de Videojuegos</h1>
		<br>
		<div class="row">
		

			{{foreach Juegos}}
			<div class="col-md-4">
				<div class="card mb-4 shadow-sm">
					<div class="card-img-top"
						style="background-size: cover ;width:9cm;height:7cm;background-repeat: no-repeat; background-image: url('{{imagen}}');">
					</div>
					<div class="card-body">
						<h4 class="card-title">{{nombre}}</h4>
						<h5 class="card-text">$ {{precio}}</h5>
						<h5 class="card-text">{{publisher}}</h5>
						<h5 class="card-text">Genero: {{genero}}</h5>
						<div onclick="alert('agregar carrito')" class="fw-bold fs-5 card-img-top" style="background-size: cover ;width:1cm;height:1cm;background-repeat: no-repeat; background-image: url('public/imgs/Caratulas/shopping-cart_icon-icons.com_72552.png');" >+</div>
					</div>
				</div>
			</div>
			{{endfor Juegos}}
			


		</div>
	</div>

</section>