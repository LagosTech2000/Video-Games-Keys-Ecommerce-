<section>
	<div class="container">
		<center>

		<h1 class="text-center">Pasarela De Pago</h1>
		<br>
			{{if vacio}}
			<center>

			<h1>Carrito Vacio</h1>
			</center>
			{{endif vacio}}

			{{foreach carrito}}
		<div class="bg-dark py-5 row">	
			<center>

			<div class=" col-md-4">
				<div class="card mb-4 shadow-sm">
					<div class="card-img-top"
						style="background-size: cover ;width:9cm;height:7cm;background-repeat: no-repeat; background-image: url('{{imagen64}}');">
					</div>
					<div class="card-body">
						<h4 class="card-title">{{nombre}}</h4>
						<h5 class="card-text">$ {{precio}}</h5>
						<h5 class="card-text">{{publisher}}</h5>
						<h5 class="card-text">Genero: {{genero}}</h5>
						
						<a style="text-decoration: none;" href="index.php?page=mnt_Delcarrito&id={{idCarrito}}"><div class="text-dark fw-bold fs-5 card-img-top" style="background-size: cover ;width:1cm;height:1cm;background-repeat: no-repeat; background-image: url('public/imgs/Caratulas/shopping-cart_icon-icons.com_72552.png'););" >-</div></a>
					</div>
				</div>
			</div>

			
			</center>
		</div>
			{{endfor carrito}}
			<div class="bg-dark py-5">
				<h2 class="text-white">Total Pedido: {{totalP}} $ + ISV</h2>
				 <a href="index.php?page=Checkout_Checkout">
				 <div class="text-white btn border-info">Pagar Con Paypal</div>
				 </a>
			</div>
              
		</center>

	</div>

</section>