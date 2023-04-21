<h1>Compra Realizada Exitosamente</h1>
<hr />
<span> Guarde La Llave Sera la unica vez que la podra ver</span>
<hr>
{{foreach keys}}
  <div class="fw-bold fs-5 card-img-top" style="background-size: cover ;width:1cm;height:1cm;background-repeat: no-repeat; background-image: url('{{imagen}}');" ></div>
  <p>Juego: {{nombre}}</p>
  <p>Llave: {{llave}}</p>
  
{{endfor keys}}
<hr />
<pre>
  
    <h1>Datos De La Orden Paypal</h1>

{{orderjson}}
</pre>