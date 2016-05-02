<?php
//Arreglo de permisos
$acceso = $this->session->userdata('Acceso');

/*<!--Validar permiso-->*/
if (!isset($acceso[40])) { ?>
	<div class="hero-unit">
		<h1>Acceso denegado</h1>
		<p>Usted no cuenta con permisos para trabajar el ICA 2e. Si necesita usar este formato, por favor comuníquese con el área de Sistemas para que le sean asignados los permisos correspondientes. </p>
	</div>
<?php } else { ?>
	<!--La fecha debe ir sobre el modal-->
	<style>.datepicker{z-index:1151;}</style>

	<!-- **************************************************** Modal 1 ***************************************************** -->
	<a href="#modal_1" role="button" class="btn btn-large btn-block btn-primary btn-alert" data-toggle="modal">1. Otorgado - 2. En trámite</a>
	<div id="modal_1" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3 id="myModalLabel">1. Otorgado - 2. En trámite</h3>
		</div>

		<div class="modal-body">
			<form class="form-horizontal">
				<!--1-->
				<div class="control-group">
					<label class="control-label" for="numero_acto">Número y fecha del acto administrativo</label>
					<div class="controls">
						<input type="text" id="numero_acto" class="span6" placeholder="Número" autofocus />
						<div class="input-append date"  id="fecha_acto" data-date="<?php echo date('Y-m-d'); ?>" data-date-format="yyyy-mm-dd">
				  			<input id="fecha_acto_2" class="span6" size="16" type="text" placeholder="Fecha" disabled/>
				  			<span class="add-on"><i class="icon-th"></i></span>
				  		</div>
					</div>
				</div>

				<!--2-->
				<div class="control-group">
					<label class="control-label" for="autoridad1">Autoridad ambiental competente</label>
					<div class="controls">
						<input type="text" id="autoridad1" class="span12" />
					</div>
				</div>

				<!--3-->
				<div class="control-group">
					<label class="control-label" for="">Vigencia, tipo y fecha de radicación</label>
					<div class="controls">
						<input type="text" id="vigencia" class="span4" placeholder="Vigencia" />
						<select id="tipo" class="span4">
							<option value="1">Nuevo</option>
							<option value="2">Renovación o modificación</option>
						</select>
						<div class="input-append date" id="fecha_radicacion" data-date="<?php echo date('Y-m-d'); ?>" data-date-format="yyyy-mm-dd">
				  			<input id="fecha_radicacion_2" class="span4" size="16" type="text" placeholder="Fecha" disabled/>
				  			<span class="add-on"><i class="icon-th"></i></span>
				  		</div>
					</div>
				</div>

				<!--4-->
				<div class="control-group">
					<label class="control-label" for="autoridad2">Autoridad ambiental competente</label>
					<div class="controls">
						<input type="text" id="autoridad2" class="span12" placeholder="" >
					</div>
				</div>
			</form>
		</div>

		<div class="modal-footer">
			<button class="btn" data-dismiss="modal" aria-hidden="true">Cancelar</button>
			<button id="btn_guardar1" class="btn btn-primary">Guardar</button>
		</div>
	</div><br>
	<legend></legend>

	<!-- **************************************************** Modal 2 ***************************************************** -->
	<a href="#modal_2" role="button" class="btn btn-large btn-block btn-primary btn-alert" data-toggle="modal">3. Uso del recurso</a>
	<div id="modal_2" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3 id="myModalLabel">3. uso del recurso</h3>
		</div>
		<div class="modal-body">
			<form id="form2" class="form-horizontal">
				<!-- 1 -->
				<div class="control-group">
					<label class="control-label" for="numero">Tipo de emisión</label>
					<div class="controls">
						<input type="text" id="numero" class="span6" placeholder="Número" autofocus/>
						<select id="tipo_emision" class="span6">
							<option value="1">Fija</option>
							<option value="2">Móvil</option>
							<option value="3">Dispersa</option>
						</select><br>
					</div>
				</div><!-- 1 -->
				
				<!-- 2 -->
				<div class="control-group">
					<label class="control-label" for="fuente_generadora">Fuente generadora</label>
					<div class="controls">
						<input type="text" id="fuente_generadora" class="span12" />
					</div>
				</div><!-- 2 -->

				<!-- 3 -->
				<div class="control-group">
					<div class="controls">
						<input type="text" id="tipo_combustible" class="span6" placeholder="Tipo de combustible" />
						<input type="text" id="material_procesado" class="span6" placeholder="Material procesado" />
					</div>
				</div><!-- 3 -->

				<!-- 4 -->
				<div class="control-group">
					<label class="control-label" for="altura">Descarga</label>
					<div class="controls">
						<input type="text" id="altura" class="span6" placeholder="Altura de la chimenea" />
						<input type="text" id="diametro_chimenea" class="span6" placeholder="Diámetro de la chimenea" /><br><br>
						<input type="text" id="coordenadas" class="span12" placeholder="Coordenadas" /><br><br>
						<input type="text" id="emisiones_autorizadas" class="span6" placeholder="Emisiones autorizadas" />
						<input type="text" id="tipo_contaminante" class="span6" placeholder="Tipo de contaminante" /><br><br>
						<input type="text" id="altura_nivel_mar" class="span6" placeholder="Altura sobre el nivel del mar" />
						<input type="text" id="presion_barometrica" class="span6" placeholder="Presión barométrica" />
					</div>
				</div><!-- 4 -->

				<!-- 5 -->
				<div class="control-group">
					<label class="control-label" for="pma">PMA relacionado</label>
					<div class="controls">
						<input type="text" id="pma" class="span12" />
					</div>
				</div><!-- 5 -->
			</form>
		</div>
		<div class="modal-footer">
			<button class="btn" data-dismiss="modal" aria-hidden="true">Cancelar</button>
			<button id="btn_guardar2" class="btn btn-primary">Guardar</button>
		</div>
	</div><br>
	<legend></legend>

	<!-- **************************************************** Modal 3 ***************************************************** -->
	<a href="#modal_3" role="button" class="btn btn-large btn-block btn-primary btn-alert" data-toggle="modal">4. Monitoreo e Inspección Ambiental</a>
	<div id="modal_3" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3 id="myModalLabel">4. Monitoreo e Inspección Ambiental</h3>
		</div>
		<div class="modal-body">
			<form id="form3" class="form-horizontal">
				<!-- 1 -->
				<div class="control-group">
					<label class="control-label" for="numero_monitoreo">Monitoreo e inspección ambiental</label>
					<div class="controls">
						<input type="text" id="numero_monitoreo" class="span6" placeholder="Número" >
						<input type="text" id="parametros" class="span6" placeholder="Parámetros" ><br><br>
						<input type="text" id="unidad_medicion" class="span6" placeholder="Unidad de medición" >
						<input type="text" id="valor_medicion" class="span6" placeholder="Valor" ><br><br>
						<input type="text" id="metodo_muestra" class="span12" placeholder="Método de toma de muestra" ><br><br>
						<input type="text" id="metodo_analisis" class="span6" placeholder="Método de análisis" >
						<div class="input-append date" id="fecha_muestreo" data-date="<?php echo date('Y-m-d'); ?>" data-date-format="yyyy-mm-dd">
				  			<input id="fecha_muestreo_2" class="span6" size="16" type="text" disabled/>
				  			<span class="add-on"><i class="icon-th"></i></span>
				  		</div>
				  		<input type="text" id="localizacion_muestreo" class="span12" placeholder="Localización de punto de muestreo" >
					</div>
				</div>
				<!-- 2 -->
				<div class="control-group">
					<label class="control-label" for="numero_norma">Norma nac. / internac.</label>
					<div class="controls">
						<input type="text" id="numero_norma" class="span6" placeholder="Número" >
						<input type="text" id="valor_norma" class="span6" placeholder="Valor" >
					</div>
				</div>
		
				<!-- 3 -->
				<div class="control-group">
					<label class="control-label" for="valor_compromiso">Compromiso en estudio ambiental.</label>
					<div class="controls">
						<input type="text" id="valor_compromiso" class="span12" placeholder="Valor" >
						<input type="text" id="pma_compromiso" class="span12" placeholder="Programas del PMA relacionados" >
					</div>
				</div>
			</form>
		</div>
		<div class="modal-footer">
			<button class="btn" data-dismiss="modal" aria-hidden="true">Cancelar</button>
			<button id="btn_guardar3" class="btn btn-primary">Guardar</button>
		</div>
	</div><br>
	<legend></legend>

	<!--Validar permiso-->
	<?php if (isset($acceso[41])) { ?>	
		<!-- **************************************************** Reporte ***************************************************** -->
		<a href="#" id="reporte_2e" role="button" class="btn btn-large btn-block btn-success btn-alert" data-toggle="modal">Reporte</a>
	<?php } ?>	
<?php } ?>
<script type="text/javascript">
	//Cuando el DOM esté listo
	$(document).ready(function(){
		//Datos del panel lateral
		var id_periodo = $("#periodo");
		var id_tramo = $("#tramo");
		var id_ficha = $("#ficha");

		//Usamos este estilo para poner la fecha sobre el modal
		$(".datepicker").css("z-index:1151");

		var fechas = $('#fecha_acto, #fecha_radicacion, #fecha_ocupacion, #fecha_muestreo').datepicker({
			onRender: function(date) {
			}
		}).on('changeDate', function(ev) {
			fechas.hide();
		}).data('datepicker');

		//Reporte
		$("#reporte_2e").on("click", function(){
			url = '<?php echo site_url("reporte/ica_2e") ?>'
			location.href = url + "/" + $("#ficha").val();
		});//Fin boton reporte

		//Boton guardar 1
		$("#btn_guardar1").on("click", function(){
			//Recoleccion de datos
			var numero_acto = $("#numero_acto");
			var fecha_acto = $("#fecha_acto_2");
			var autoridad1 = $("#autoridad1");
			var vigencia = $("#vigencia");
			var tipo = $("#tipo");
			var fecha_radicacion = $("#fecha_radicacion_2");
			var autoridad2 = $("#autoridad2");

			//Se recogen los datos
			datos = {
				id_periodo: id_periodo.val(),
				id_tramo: id_tramo.val(),
				id_ficha: id_ficha.val(),
				numero_acto: numero_acto.val(),
				fecha_acto: fecha_acto.val(),
				autoridad1: autoridad1.val(),
				vigencia: vigencia.val(),
				tipo: tipo.val(),
				fecha_radicacion: fecha_radicacion.val(),
				autoridad2: autoridad2.val()
			}//Fin datos

			//Para guardar ejecutaremos una funcion JS que envía datos con ajax
			guardar = enviar_ajax("<?php echo site_url('ica/guardar_2e'); ?>", datos);

			//Si se guardó
			if (guardar != "false") {
				//Se cierra el modal
				$('#modal_1').modal('hide');

				limpiar(".form-horizontal");
			}
		});//Fin btn guardar 1

		//Boton guardar 2
		$("#btn_guardar2").on("click", function(){
			//Recoleccion de datos
			var numero = $("#numero");
			var tipo_emision = $("#tipo_emision");
			var fuente_generadora = $("#fuente_generadora");
			var tipo_combustible = $("#tipo_combustible");
			var material_procesado = $("#material_procesado");
			var altura = $("#altura");
			var diametro_chimenea = $("#diametro_chimenea");
			var coordenadas = $("#coordenadas");
			var emisiones_autorizadas = $("#emisiones_autorizadas");
			var tipo_contaminante = $("#tipo_contaminante");
			var altura_nivel_mar = $("#altura_nivel_mar");
			var presion_barometrica = $("#presion_barometrica");
			var pma = $("#pma");

			//Se recogen los datos
			datos = {
				id_periodo: id_periodo.val(),
				id_tramo: id_tramo.val(),
				id_ficha: id_ficha.val(),
				numero: numero.val(),
				tipo_emision: tipo_emision.val(),
				fuente_generadora: fuente_generadora.val(),
				tipo_combustible: tipo_combustible.val(),
				material_procesado: material_procesado.val(),
				altura: altura.val(),
				diametro_chimenea: diametro_chimenea.val(),
				coordenadas: coordenadas.val(),
				emisiones_autorizadas: emisiones_autorizadas.val(),
				tipo_contaminante: tipo_contaminante.val(),
				altura_nivel_mar: altura_nivel_mar.val(),
				presion_barometrica: presion_barometrica.val(),
				pma: pma.val(),
			}
			// console.log(datos)

			//Para guardar ejecutaremos una funcion JS que envía datos con ajax
			guardar = enviar_ajax("<?php echo site_url('ica/guardar_2e_recurso'); ?>", datos);

            //Si se guardó
			if (guardar != "false") {
				//Se cierra el modal
				$('#modal_2').modal('hide');

				limpiar("#form2");
			}
		});//Fin btn guardar 2

		//Boton guardar 3
		$("#btn_guardar3").on("click", function(){
			//Recoleccion de datos
			var numero = $("#numero_monitoreo");
			var parametros = $("#parametros");
			var unidad_medicion = $("#unidad_medicion");
			var valor_medicion = $("#valor_medicion");
			var metodo_muestra = $("#metodo_muestra");
			var metodo_analisis = $("#metodo_analisis");
			var fecha_muestreo = $("#fecha_muestreo_2");
			var localizacion_muestreo = $("#localizacion_muestreo");
			var numero_norma = $("#numero_norma");
			var valor_norma = $("#valor_norma");
			var valor_com = $("#valor_com");
			var valor_compromiso = $("#valor_compromiso");
			var pma_compromiso = $("#pma_compromiso");


			//Arreglo de datos
			datos = {
				id_periodo: id_periodo.val(),
				id_tramo: id_tramo.val(),
				id_ficha: id_ficha.val(),
				numero: numero.val(),
				parametros: parametros.val(),
				unidad_medicion: unidad_medicion.val(),
				valor_medicion: valor_medicion.val(),
				metodo_muestra: metodo_muestra.val(),
				metodo_analisis: metodo_analisis.val(),
				fecha_muestreo: fecha_muestreo.val(),
				localizacion_muestreo: localizacion_muestreo.val(),
				numero_norma: numero_norma.val(),
				valor_norma: valor_norma.val(),
				valor_compromiso: valor_compromiso.val(),
				pma_compromiso: pma_compromiso.val()
			}

			//Para guardar ejecutaremos una funcion JS que envía datos con ajax
			guardar = enviar_ajax("<?php echo site_url('ica/guardar_2f_monitoreo'); ?>", datos);

			//Si se guardó
			if (guardar != "false") {
				//Se cierra el modal
				$('#modal_3').modal('hide');

				limpiar("#form3");
			}
		});//Fin guardar 3
	});//Fin document.ready
</script>