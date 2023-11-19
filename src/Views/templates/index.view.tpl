<section class="">
  <div class="container ">
    <h1 class="fw-bold text-center py-5">Catálogo de Videojuegos</h1>

    <form action="index.php" method="post">
      <select name="genero" id="genero" class="text-center form-select btn-light" onchange="submitForm()">
        <option value="" selected>-- Seleccione un género --</option>
        {{foreach generos}}
        <option value="{{genero}}">{{genero}}</option>
        {{endfor generos}}
      </select>
    </form>

    <br>
    <div class="row" style="margin-left: 7.5%;">


      {{foreach Juegos}}
      <div class="fw-bold me-3 col-md-2 shadow-lg p-1 mb-5 bg-body rounded">
        <div class="shadow-none  mb-4 fw-2">
          <div class="fw-bold card-img-top"
            style="background-size: cover; background-repeat: no-repeat; background-image: url('{{imagen}}'); height: 7cm;">
          </div>
          <div class="fw-bold card-body">
            <h4 class="fw-bold card-title">{{nombre}}</h4>
            <h5 class="fw-bold card-text">$ {{precio}}</h5>
            <h5 class="fw-bold card-text">{{publisher}}</h5>
            <h5 class="fw-bold card-text">{{genero}}</h5>

            {{if ~logged}}
            <a href="index.php?page=mnt_Addcarrito&id={{idJuego}}">
              <div class="fw-bold fs-5 card-img-top"
                style="background-size: cover ;width:1cm;height:1cm;background-repeat: no-repeat; background-image: url('public/imgs/Caratulas/shopping-cart_icon-icons.com_72552.png');">
              </div>
            </a>
            {{endif ~logged}}

          </div>
        </div>

      </div>


      {{endfor Juegos}}



    </div>
  </div>

  <script>
    function submitForm() {
      var form = document.querySelector('form');
      form.submit();
    }

  </script>


</section>