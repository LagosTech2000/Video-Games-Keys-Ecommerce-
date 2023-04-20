<h1>{{mode_dsc}}</h1>
<section>
  <form action="index.php?page=mnt_juego&mode={{mode}}&id={{id}}"
    method="POST" >
    <section>
    <label for="id">Código</label>
    <input type="hidden" id="id" name="id" value="{{id}}"/>
    <input type="text" readonly name="iddummy" value="{{id}}"/>
    </section>
    <section>
      <label for="nombre">Nombre</label>
      <input type="text" {{readonly}} name="nombre" value="{{nombre}}" maxlength="45" placeholder="Nombre de Categoría"/>
    </section>
    <section>
      <label for="catest">Estado</label>
      <select id="catest" name="catest" {{if readonly}}disabled{{endif readonly}}>
        <option value="ACT" {{catest_ACT}}>Activo</option>
        <option value="INA" {{catest_INA}}>Inactivo</option>
        <option value="PLN" {{catest_PLN}}>Planificación</option>
      </select>
    </section>
    {{if hasErrors}}
        <section>
          <ul>
            {{foreach aErrors}}
                <li>{{this}}</li>
            {{endfor aErrors}}
          </ul>
        </section>
    {{endif hasErrors}}
    <section>
      {{if showaction}}
      <button type="submit" name="btnGuardar" value="G">Guardar</button>
      {{endif showaction}}
      <button type="button" id="btnCancelar">Cancelar</button>
    </section>
  </form>
</section>


<script>
  document.addEventListener("DOMContentLoaded", function(){
      document.getElementById("btnCancelar").addEventListener("click", function(e){
        e.preventDefault();
        e.stopPropagation();
        window.location.assign("index.php?page=mnt_juegos");
      });
  });
</script>
