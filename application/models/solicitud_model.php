<?php
/**
 * Modelo encargado de gestionar toda la informacion de los registros
 * de auditoria
 * 
 * @author              John Arley Cano Salinas
 * @copyright           HATOVIAL S.A.S.
 */
Class Solicitud_model extends CI_Model{
    /**
     * 
     * Esta funcion guarda la solicitud en base de datos
     *
     *
     * @param array solicitud
     * @return boolean
     * @throws 
     */
    function guardar($solicitud){
        //Se ejecuta la insercion con los datos que vienen desde un arreglo
        $guardar = $this->db->insert('solicitudes', $solicitud);
        
        //Si el registro es exitoso
        if($guardar){
            //Retorna verdadero
            return true;
        }else{
            //Retorna falso
            return false;
        }
    }//Fin guardar()
    
    /**
     * 
     * Esta funcion guarda la remision de la solicitud, en caso de que aplique
     *
     *
     * @param array remision
     * @return boolean
     * @throws 
     */
    function guardar_remision($remision){
        //Se ejecuta la insercion con los datos que vienen desde un arreglo
        $guardar = $this->db->insert('remisiones', $remision);
        
        //Si el registro es exitoso
        if($guardar){
            //Retorna verdadero
            return true;
        }else{
            //Retorna falso
            return false;
        }
    }//Fin guardar_remision()
    
    /**
     * 
     * Esta funcion guarda los seguimientos hechos a la solicitud
     *
     *
     * @param array remision
     * @return boolean
     * @throws 
     */
    function guardar_seguimiento($seguimiento){
        //Se ejecuta la insercion con los datos que vienen desde un arreglo
        $guardar = $this->db->insert('seguimientos', $seguimiento);
        
        //Si el registro es exitoso
        if($guardar){
            //Retorna verdadero
            return true;
        }else{
            //Retorna falso
            return false;
        }
    }//Fin guardar_seguimiento()
    
    /**
     * 
     * Esta funcion carga los estados de una solicitud
     * desde la base de datos
     *
     *
     * @param 
     * @return array
     * @throws 
     */
    function cargar_estados(){
        //Columnas a retornar
        $this->db->select('*');
        $this->db->order_by('Nombre');
        
        //Se ejecuta y retorna la consulta
        return $this->db->get('tbl_solicitud_estados')->result();
    }//Fin cargar_estados()
    
    /**
     * 
     * Esta funcion carga los lugares de recepción
     * de una solicitud
     *
     *
     * @param 
     * @return array
     * @throws 
     */
    function cargar_lugares_recepcion(){
        //Columnas a retornar
        $this->db->select('*');
        $this->db->order_by('Nombre');
        
        //Se ejecuta y retorna la consulta
        return $this->db->get('tbl_recepcion_lugares')->result();
    }//Fin cargar_estados()

    /**
     * 
     * Esta funcion carga los frentes para la solicitud
     * desde la base de datos
     *
     *
     * @param 
     * @return array
     * @throws 
     */
    function cargar_frentes(){
        //Columnas a retornar
        $this->db->select('*');
        $this->db->order_by('Nombre');
        
        //Se ejecuta y retorna la consulta
        return $this->db->get('tbl_frentes')->result();
    }//Fin cargar_tramos()
    
    /**
     * 
     * Esta funcion carga los tramos para la solicitud
     * desde la base de datos
     *
     *
     * @param 
     * @return array
     * @throws 
     */
    function cargar_tramos(){
        //Columnas a retornar
        $this->db->select('*');
        $this->db->order_by('Nombre');
        
        //Se ejecuta y retorna la consulta
        return $this->db->get('tbl_tramos')->result();
    }//Fin cargar_tramos()
    
    /**
     * 
     * Esta funcion carga las areas encargadas de las solicitudes
     * desde la base de datos
     *
     *
     * @param 
     * @return array
     * @throws 
     */
    function cargar_areas_encargadas(){
        //Columnas a retornar
        $this->db->select('*');
        $this->db->order_by('Nombre');
        
        //Se ejecuta y retorna la consulta
        return $this->db->get('tbl_area_encargada')->result();
    }//Fin cargar_areas_encargadas()
    
    /**
     * 
     * Esta funcion carga los temas de las solicitudes
     * desde la base de datos
     *
     *
     * @param 
     * @return array
     * @throws 
     */
    function cargar_temas(){
        //Columnas a retornar
        $this->db->select('*');
        $this->db->order_by('Nombre');
        
        //Se ejecuta y retorna la consulta
        return $this->db->get('tbl_temas')->result();
    }//Fin cargar_temas()
    
    /**
     * 
     * Esta funcion carga los municipios de las solicitudes
     * desde la base de datos
     *
     *
     * @param 
     * @return array
     * @throws 
     */
    function cargar_municipios(){
        //Columnas a retornar
        $this->db->select('*');
        $this->db->order_by('Nombre');
        
        //Se ejecuta y retorna la consulta
        return $this->db->get('tbl_municipios')->result();
    }//Fin cargar_municipios()
    
    /**
     * 
     * Esta funcion carga los sectores, que son los barrios, veredas, parcelas, etc
     * desde la base de datos
     *
     *
     * @param 
     * @return array
     * @throws 
     */
    function cargar_sectores($id_municipio){
        //Columnas a retornar
        $this->db->select('*');
        $this->db->where('Fk_Id_Municipio', $id_municipio);
        $this->db->order_by('Nombre');
        
        //Se ejecuta y retorna la consulta
        return $this->db->get('tbl_sectores')->result();
    }//Fin cargar_sectores()
    
    /**
     * 
     * Esta funcion carga las formas de recepcion de las soliditudes
     * desde la base de datos
     *
     *
     * @param 
     * @return array
     * @throws 
     */
    function cargar_formas_recepcion(){
        //Columnas a retornar
        $this->db->select('*');
        $this->db->order_by('Nombre');
        
        //Se ejecuta y retorna la consulta
        return $this->db->get('tbl_recepcion_forma')->result();
    }//Fin cargar_formas_recepcion()
    
    /**
     * 
     * Esta funcion carga las formas de recepcion de las soliditudes
     * desde la base de datos
     *
     *
     * @param 
     * @return array
     * @throws 
     */
    function cargar_tipos_solicitud(){
        //Columnas a retornar
        $this->db->select('*');
        $this->db->order_by('Nombre');
        
        //Se ejecuta y retorna la consulta
        return $this->db->get('tbl_solicitud_tipos')->result();
    }//Fin cargar_tipos_solicitud()
    
    /**
     * 
     * Esta funcion carga las acciones emprendidas en el seguimiento
     * de las soliditudes desde la base de datos
     *
     *
     * @param 
     * @return array
     * @throws 
     */
    function cargar_acciones_emprendidas(){
        //Columnas a retornar
        $this->db->select('*');
        $this->db->order_by('Nombre');
        
        //Se ejecuta y retorna la consulta
        return $this->db->get('tbl_solicitud_accion')->result();
    }//Fin cargar_acciones_emprendidas()
    
    /**
     * 
     * Esta funcion carga los nombres del personal
     * de las soliditudes desde la base de datos
     *
     *
     * @param 
     * @return array
     * @throws 
     */
    function cargar_funcionarios(){
        //Columnas a retornar
        $this->db->select('*');
        $this->db->where('Remitible', true);
        $this->db->order_by('Nombres');
        
        //Se ejecuta y retorna la consulta
        return $this->db->get('funcionarios')->result();
    }//Fin cargar_funcionarios()
    
    /**
     * 
     * Esta funcion lista las solicitudes segun el estado que 
     * haya sido seleccionado
     *
     *
     * @param 
     * @return array
     * @throws 
     */
    function listar($id_estado){
        //Columnas a retornar
        $this->db->select('Pk_Id_Solicitud');
        $this->db->select('Nombres');
        $this->db->select('Fecha_Creacion');
        $this->db->select('Solicitud_Descripcion');
        $this->db->order_by('Pk_Id_Solicitud', 'desc');

        //Si se ha seleccionado un estado
        if($id_estado){
            //Se indica la condicion con el estado
            $this->db->where('Fk_Id_Solicitud_Estado', $id_estado);    
        }//Fin if
        
        //Se ejecuta y retorna la consulta
        return $this->db->get('solicitudes')->result();
    }//Fin listar()

    /**
     * 
     * Esta funcion lista las solicitudes segun la busqueda que el usuario
     * realice
     *
     *
     * @param 
     * @return array
     * @throws 
     */
    function listar_busqueda($item){
        //Consulta
        $sql =
        "SELECT
            solicitudes.Pk_Id_Solicitud,
            solicitudes.Nombres,
            solicitudes.Fecha_Creacion,
            solicitudes.Solicitud_Descripcion
        FROM
            solicitudes
        WHERE
            solicitudes.Pk_Id_Solicitud = '".$item."' OR
            solicitudes.Nombres LIKE '%".$item."%' OR
            solicitudes.Solicitud_Descripcion LIKE '%".$item."%'";

        //Se ejecuta y retorna la consulta
        return $this->db->query($sql)->result();
    }//Fin listar_busqueda()

    function listar_dias(){
        //Se crea un arreglo
        $dias = array();

        for ($dia = 1; $dia < 32; $dia++) { 
            array_push($dias, str_pad($dia, 2 , "0", STR_PAD_LEFT));
        }//Fin for

        //Se retorna el arreglo
        return $dias;
    }//Fin listar_dias

    /**
     * Lista los meses del año
     * @return [array] [meses con número y nombre, además del número de columna
     * para efectos del reporte]
     */
    function listar_meses(){
        //Se crea un arreglo de dos dimensiones con la informacion de cada mes
        $meses = array(
            array('Numero' => "01", 'Nombre' => 'Enero', 'Columna' => 'B'),
            array('Numero' => "02", 'Nombre' => 'Febrero', 'Columna' => 'C'),
            array('Numero' => "03", 'Nombre' => 'Marzo', 'Columna' => 'D'),
            array('Numero' => "04", 'Nombre' => 'Abril', 'Columna' => 'E'),
            array('Numero' => "05", 'Nombre' => 'Mayo', 'Columna' => 'F'),
            array('Numero' => "06", 'Nombre' => 'Junio', 'Columna' => 'G'),
            array('Numero' => "07", 'Nombre' => 'Julio', 'Columna' => 'H'),
            array('Numero' => "08", 'Nombre' => 'Agosto','Columna' => 'I'),
            array('Numero' => "09", 'Nombre' => 'Septiembre', 'Columna' => 'J'),
            array('Numero' => "10", 'Nombre' => 'Octubre', 'Columna' => 'K'),
            array('Numero' => "11", 'Nombre' => 'Noviembre', 'Columna' => 'L'),
            array('Numero' => "12", 'Nombre' => 'Diciembre', 'Columna' => 'M')
        );

        //Se retorna el arreglo
        return $meses;
    }//Fin listar_meses

    function listar_anios(){
        //Se crea un arreglo
        $anios = array();

        //Se declaran los rangos de años
        $anio_actual = date ("Y") - 16;
        $anio_inicial = $anio_actual - 80;
        

        //Recorrido por años
        for ($anio = $anio_inicial; $anio < $anio_actual; $anio++) { 
            //Se agrega el año al arreglo
            array_push($anios, $anio);
        }//Fin for

        //Se retorna el arreglo
        return $anios;

        //Se crea un array con los años
        $anios = array( '2010', '2011', '2012', '2013', '2014');

        //Se retorna el array
        return $anios;
    } // listar_anios

    function listar_anios_actual(){
        //Se crea un arreglo
        $anios = array();

        //Se declaran los rangos de años
        $anio_actual = date ("Y")+1;
        $anio_inicial = $anio_actual - 20;
        

        //Recorrido por años
        for ($anio = $anio_inicial; $anio < $anio_actual; $anio++) { 
            //Se agrega el año al arreglo
            array_push($anios, $anio);
        }//Fin for

        //Se retorna el arreglo
        return $anios;

        //Se crea un array con los años
        $anios = array( '2010', '2011', '2012', '2013', '2014');

        //Se retorna el array
        return $anios;
    } // listar_anios
    
    /**
     * 
     * Esta funcion muestra los detalles de la solicitud seleccionada
     *
     *
     * @param 
     * @return array
     * @throws 
     */
    function ver($id_solicitud){
        //Consulta
        $sql =
        "SELECT
            solicitudes.Pk_Id_Solicitud,
            solicitudes.Radicado_Entrada,
            solicitudes.Nombres,
            solicitudes.Fecha_Creacion,
            solicitudes.Direccion,
            solicitudes.Telefono,
            tbl_sectores.Nombre Sector,
            tbl_municipios.Nombre Municipio,
            tbl_sectores_tipos.Nombre Tipo_Sector,
            tbl_recepcion_forma.Nombre Forma_Recepcion,
            tbl_recepcion_lugares.Nombre Lugar_Recepcion,
            tbl_solicitud_tipos.Nombre Tipo_Solicitud,
            solicitudes.Solicitud_Descripcion Descripcion_Solicitud,
            tbl_solicitud_accion.Pk_Id_Solicitud_Accion,
            tbl_solicitud_accion.Nombre Accion_Emprendida,
            solicitudes.Accion_Descripcion Descripcion_Accion,
            remisiones.Pk_Id_Remision,
            solicitudes.Fk_Id_Solicitud_Estado,
            funcionarios.Pk_Id_Funcionario,
            CONCAT(funcionarios.Nombres,' ',funcionarios.Apellidos) AS Funcionario,
            tbl_cargos.Nombre AS Cargo,
            tbl_empresas.Nombre AS Empresa,
            remisiones.Fecha AS Fecha_Remision,
            remisiones.Radicado_Remision,
            solicitudes.Fecha_Cierre,
            solicitudes.Radicado_Salida AS Radicado_Respuesta,
            solicitudes.Respuesta_Descripcion AS Descripcion_Respuesta,
            tbl_area_encargada.Nombre AS Area_Encargada,
            tbl_temas.Nombre AS Tema,
            tbl_tramos.Nombre AS Tramo
        FROM
            solicitudes
            LEFT JOIN tbl_tramos ON solicitudes.Fk_Id_Tramo = tbl_tramos.Pk_Id_Tramo
            LEFT JOIN tbl_sectores ON solicitudes.Fk_Id_Sector = tbl_sectores.Pk_Id_Sector
            LEFT JOIN tbl_municipios ON tbl_municipios.Pk_Id_Municipio = tbl_sectores.Fk_Id_Municipio
            LEFT JOIN tbl_recepcion_forma ON tbl_recepcion_forma.Pk_Id_Recepcion_Forma = solicitudes.Fk_Id_Recepcion_Forma
            LEFT JOIN tbl_solicitud_tipos ON solicitudes.Fk_Id_Solicitud_Tipo = tbl_solicitud_tipos.Pk_Id_Solicitud_Tipo
            LEFT JOIN tbl_solicitud_accion ON solicitudes.Fk_Id_Solicitud_Accion = tbl_solicitud_accion.Pk_Id_Solicitud_Accion
            LEFT JOIN remisiones ON remisiones.Pk_Id_Remision = solicitudes.Fk_Id_Remision
            LEFT JOIN funcionarios ON remisiones.Fk_Id_Funcionario = funcionarios.Pk_Id_Funcionario
            LEFT JOIN tbl_area_encargada ON solicitudes.Fk_Id_Area_Encargada = tbl_area_encargada.Pk_Id_Area_Encargada
            LEFT JOIN tbl_temas ON solicitudes.Fk_Id_Tema = tbl_temas.Pk_Id_Tema
            LEFT JOIN tbl_empresas ON tbl_empresas.Pk_Id_Empresa = funcionarios.Fk_Id_Empresa
            LEFT JOIN tbl_cargos ON tbl_cargos.Pk_Id_Cargo = funcionarios.Fk_Id_Cargo
            LEFT JOIN tbl_sectores_tipos ON tbl_sectores.Fk_Id_Sector_Tipo = tbl_sectores_tipos.Pk_Id_Sector_Tipo
            LEFT JOIN tbl_recepcion_lugares ON solicitudes.Fk_Id_Lugar_Recepcion = tbl_recepcion_lugares.Pk_Id_Recepcion_Lugar
        WHERE
            solicitudes.Pk_Id_Solicitud = {$id_solicitud}";

        //Se ejecuta y retorna la consulta
        return $this->db->query($sql)->row();
    }//Fin ver()
    
    /**
     * 
     * Esta funcion muestra los seguimientos de la solicitud seleccionada
     *
     *
     * @param 
     * @return array
     * @throws 
     */
    function ver_seguimientos($id_solicitud){
        //Columnas a retornar
        $this->db->select('*');
        $this->db->where('Fk_Id_Solicitud', $id_solicitud);
        
        //Se ejecuta y retorna la consulta
        return $this->db->get('seguimientos')->result();
    }//Fin ver_seguimientos()
    
    /**
     * 
     * Esta funcion modifica los datos de la solicitud in situ
     * lo que indica que lo hace en la vista inmediatamente
     *
     *
     * @param 
     * @return array
     * @throws 
     */
    function modificar($campo, $id_solicitud, $valor){
        //Se prepara el arreglo con la informacion a guardar
        $guardar = array(
            'Fecha_Modificacion' => date('Y-m-d H:i:s', time()),
            "$campo" => $valor
        );

        //Se ejecuta la actualizacion con la condicion
        $this->db->where('Pk_Id_Solicitud', $id_solicitud);
        $this->db->update('solicitudes', $guardar);
    }//Fin modificar()
    
    /**
     * 
     * Esta funcion carga los nombres del personal
     * de las solicitudes desde la base de datos
     *
     *
     * @param 
     * @return array
     * @throws 
     */
    function cargar_nombre_select($tabla, $id, $valor){
        //Columnas a retornar
        $this->db->select('Nombre');
        $this->db->where($id, $valor);
        
        //Se ejecuta y retorna la consulta
        $campos = $this->db->get($tabla)->result();
        
        //Se recorre el resultado
        foreach($campos as $row):
             //Se retorna el nombre
            return $row->Nombre;
        endforeach;
    }//Fin cargar_nombre_select()
    
    /**
     * 
     * Esta funcion determina si existe una remision para la solicitud
     * especificada
     *
     *
     * @param 
     * @return array
     * @throws 
     */
    function existe_remision($id_solicitud){
        //Se establece las condiciones
        $this->db->select('Fk_Id_Remision');
        $this->db->where('Pk_Id_Solicitud', $id_solicitud);
        
        //Se ejecuta y retorna la consulta
        $sql = $this->db->get('solicitudes')->result();
        
        //Se hace el recorrido para ver ese dato
        foreach ($sql as $row){
            //Si devuelve algo
            if($row->Fk_Id_Remision){
                //retorna true
                return true;
            }else{
                //Retorna false
                return false;
            }
        }//Fin foreach
    }//Fin existe_remision
    
    /**
     * 
     * Esta funcion elimina la remision asociada a una solicitud
     *
     *
     * @param 
     * @return array
     * @throws 
     */
    function eliminar_remision($id_remision){
        //Simplemente ejecuta el delete de ese registro
        $this->db->delete('remisiones', array('Pk_Id_Remision' => $id_remision));
    }//Fin eliminar_remision()
    
    /**
     * 
     * Esta funcion modifica la remision
     *
     *
     * @param $id_remision, $datos
     * @return 
     * @throws 
     */
    function modificar_remision($id_remision, $datos){
        //Se ejecuta el update en la base de datos
        $this->db->where('Pk_Id_Remision', $id_remision);
        $this->db->update('remisiones', $datos);
    }//Fin modificar_remision()
    
    /**
     * 
     * Esta funcion Inserta un nuevo seguimiento
     * desde la vista
     *
     *
     * @param 
     * @return 
     * @throws 
     */
    function guardar_seguimiento_vista($id_solicitud, $descripcion){
        //Se ejecuta la insercion con los datos que vienen desde un arreglo
        $this->db->insert('seguimientos', array('Fk_Id_Solicitud' => $id_solicitud, 'Descripcion' => $descripcion));
    }//Fin guardar_seguimiento()
    
    /**
     * 
     * Esta funcion modifica un seguimiento
     *
     *
     * @param 
     * @return 
     * @throws 
     */
    function modificar_seguimiento($id_seguimiento, $descripcion){
        //Se ejecuta la validacion
        $this->db->where('Pk_Id_Seguimiento', $id_seguimiento);
        
        //Se realiza la actualizacion        
        $this->db->update('seguimientos', array('Descripcion' => $descripcion));
    }//Fin modificar_seguimiento()
}
/* Fin del archivo solicitud_model.php */
/* Ubicación: ./application/models/solicitud_model.php */