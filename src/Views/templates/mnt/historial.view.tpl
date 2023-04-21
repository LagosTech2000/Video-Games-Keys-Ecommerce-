<section>
    <div class="container">
        <h1 class="text-center">Historial De Ventas</h1>
        <br>        
       <br>
        <div>
            <center>

            <table class="ms-5 table table-striped w-100">
                <thead class="btn-outline">                    
                    <th> Juego </th>
                    <th> Precio </th>
                    <th> Publicadora </th>
                    <th> Fecha Compra </th>
                </thead>
                <tbody>
                    {{foreach historial}}
                    <tr>

                     <td> {{nombre}} </td>
                     <td> {{precio}} $ </td>
                     <td> {{publisher}} </td>
                     <td> {{created_at}} </td>
                    </tr>
                    {{endfor historial}}
                    <tr><td>Total</td>
                    <td class="fw-bold">{{totalP}} $</td></tr>

                </tbody>
            </table>

            </center>
        </div>

    </div>

</section>