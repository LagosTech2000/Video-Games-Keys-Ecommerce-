<section>
	<div class="container">
		<h1 class="text-center">Carrito de {{username}}</h1>

		<br>
		<h2 class="text-center">Articulos: {{cuenta}} </h2>
		<br>
		{{if ~novacio}}
		<a style="text-decoration: none;" href="index.php?page=mnt_facturar">
			<button>Facturar</button>&nbsp;
		</a>

		<a style="text-decoration: none;" href="index.php?page=mnt_vaciarcarrito">
		
		<button>Vaciar Carrito</button>&nbsp;

		</a>
		{{endif ~novacio}}

		<a href="index.php?page=mnt_historial">
			<button>Historial</button>

		</a>
		<br>
		<br>
		<div class="row">
			{{if vacio}}
			<center>

				<h1>Carrito Vacio</h1>
			</center>
			{{endif vacio}}

			{{foreach carrito}}
			<div class="col-md-4">
				<div class="card mb-4 shadow-sm">
					<div class="card-img-top"
						style="background-size: cover ;width:9cm;height:7cm;background-repeat: no-repeat; background-image: url('{{imagen64}}');">
					</div>
					<div class="card-body">
						<h4 class="card-title">{{nombre}}</h4>
						<h5 class="card-text">$ {{precio}}</h5>
						<h5 class="card-text">{{publisher}}</h5>
						<h5 class="card-text">Genero: {{genero}}</h5>

						<a style="text-decoration: none;" href="index.php?page=mnt_Delcarrito&id={{idCarrito}}">
							<div class="text-dark fw-bold fs-5 card-img-top"
								style="background-size: cover ;width:1cm;height:1cm;background-repeat: no-repeat; background-image: url('public/imgs/Caratulas/shopping-cart_icon-icons.com_72552.png'););">
								-</div>
						</a>
					</div>
				</div>
			</div>
			{{endfor carrito}}



		</div>
	</div>

</section>