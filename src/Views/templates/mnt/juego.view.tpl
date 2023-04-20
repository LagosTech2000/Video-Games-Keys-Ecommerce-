<h1>{{mode_dsc}}</h1>
<section>
  <form action="index.php?page=mnt_juego&mode={{mode}}&id={{id}}" method="POST" enctype="multipart/form-data">
    <section>
      <label for="id">Código</label><br>
      <input type="hidden" id="id" name="id" value="{{id}}" />
      <input type="hidden" id="mode" name="mode" value="{{mode}}"/> 
    <input type="hidden"  name="xssToken" value="{{xssToken}}"/>
      <input type="text" readonly name="iddummy" value="{{id}}" />
    </section>
    <section>
      <label for="nombre">Nombre</label><br>
      <input type="text" {{readonly}} name="nombre" value="{{nombre}}" maxlength="45" placeholder="Juego" />
    </section>
    <section>
      <label for="catest">Descripcion</label><br>
      <input type="text" {{readonly}} name="descripcion" value="{{descripcion}}" maxlength="45"
        placeholder="Descripcion" />

    </section>

    <section>
      <label for="catest">Fecha lanzamiento</label><br>
      <input type="date" {{readonly}} name="released_date" value="{{released_date}}" maxlength="45"
        placeholder="Descripcion" />

    </section>

    <section>
      <label>Publicadora</label><br>
      <input type="text" {{readonly}} name="publisher" value="{{publisher}}" maxlength="45" placeholder="Publicadora" />

    </section>

    <section>
      <label for="">Precio</label><br>
      <input type="text" {{readonly}} name="precio" value="{{precio}}" maxlength="45" placeholder="Descripcion" />

    </section>
    {{if ~show_action}}
    <br>
    <section>
      <label for="image">Imagen</label><br>
      <input type="file" name="image" id="image">

    </section>
    {{endif ~show_action}}
    {{if generos}}
      <label for="genero">Genero</label><br>
      <select name="genero" id="">
    {{foreach generos}}       
      <option value="{{id}}">{{genero}}</option>
    {{endfor generos}}
      </select>
{{endif generos}}
    {{if hasErrors}}
    <section>
      <ul>
        {{foreach aErrors}}
        <li>{{this}}</li>
        {{endfor aErrors}}
      </ul>
    </section>
    {{endif hasErrors}}
    <br>
    <section>
      {{if ~show_action}}
      <button type="submit" name="btnGuardar" value="G">Guardar</button>&nbsp;
      {{endif ~show_action}}
      <button type="button" id="btnCancelar">Cancelar</button>
    </section>
  </form>
</section>


<script>
  document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("btnCancelar").addEventListener("click", function (e) {
      e.preventDefault();
      e.stopPropagation();
      window.location.assign("index.php?page=mnt_juegos");
    });
  });
</script>