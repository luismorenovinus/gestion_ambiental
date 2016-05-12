<?php
  // $objPHPExcel = new PHPExcel();
  //
  // $objPHPExcel->getProperties()
  // 	->setCreator("Luis David Moreno Lopera - VINUS S.A.S.")
  // 	->setLastModifiedBy("Luis David Moreno Lopera")
  // 	//->setTitle("Sistema de Gestión Socio Ambiental - Generado el ".$this->auditoria_model->formato_fecha(date('Y-m-d')).' - '.date('h:i A'))
  // 	->setSubject("Recepcion de solicitudes")
  // 	->setDescription("Descripción recepcion solicitudes")
  // 	->setKeywords("recepcion solicitudes")
  //     ->setCategory("Reporte");
  //
  //   $objPHPExcel->getActiveSheet()->getDefaultColumnDimension()->setWidth(5);
  //
  // header('Cache-Control: max-age=0');
  // header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
  // header('Content-Disposition: attachment; filename="Recepcion_solicitudes.xlsx"');
  //
  // //Definicion de las configuraciones por defecto en todo el libro
  // $objPHPExcel->getDefaultStyle()->getFont()->setName('Helvetica'); //Tipo de letra
  // $objPHPExcel->getDefaultStyle()->getFont()->setSize(10); //Tamanio
  // $objPHPExcel->getDefaultStyle()->getAlignment()->setWrapText(true);//Ajuste de texto
  // $objPHPExcel->getDefaultStyle()->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);// Alineacion centrada
  //
  //
  // //Estilo de los titulos
  // $estilo_titulos = array(
  // 	'font' => array(
  // 		'bold' => true
  // 	),
  // 	'alignment' => array(
  // 		'horizontal' => PHPExcel_Style_Alignment::VERTICAL_CENTER
  // 	),
  // );
  //
  // //estilo de las celdas que totalizan
  // $estilo_totales = array(
  // 	'font' => array(
  // 		'bold' => true
  // 	)
  // );
  //
  // //Estilo de los bordes
  // $bordes = array(
  //     'borders' => array(
  //         'allborders' => array(
  //             'style' => PHPExcel_Style_Border::BORDER_THIN,
  //             'color' => array(
  //                 'argb' => 'FFFFFF'
  //             )
  //         ),
  //     ),
  // );
  //
  // //Relleno 1
  // $relleno1 = array(
  // 	'fill' => array(
  // 	    'type' => PHPExcel_Style_Fill::FILL_GRADIENT_LINEAR,
  // 	    'rotation' => 90,
  // 	    'startcolor' => array(
  //   	  		'argb' => 'DBDBDB'
  //         ),
  // 	    'endcolor' => array(
  // 			'argb' => 'DBDBDB'
  //     	),
  //     ),
  // );
  //
  // //Relleno 2
  // $relleno2 = array(
  // 	'fill' => array(
  // 	    'type' => PHPExcel_Style_Fill::FILL_GRADIENT_LINEAR,
  // 	    'rotation' => 90,
  // 	    'startcolor' => array(
  //   	  		'argb' => 'BCBABA'
  //         ),
  // 	    'endcolor' => array(
  // 			'argb' => 'BCBABA'
  //     	),
  //     ),
  // );
  //
  // //Relleno titulos
  // $relleno_titulos = array(
  // 	'fill' => array(
  // 	    'type' => PHPExcel_Style_Fill::FILL_GRADIENT_LINEAR,
  // 	    'rotation' => 90,
  // 	    'startcolor' => array(
  //   	  		'argb' => '979797'
  //         ),
  // 	    'endcolor' => array(
  // 			'argb' => '979797'
  //     	),
  //     ),
  // );
  //
  // //Se declara el numero de la hoja en la que se va a trabajar
  // $hoja = $objPHPExcel->getActiveSheet()->setTitle('hoja 1');
  //
  // /*
	//  * Definicion de la anchura de las columnas
	//  */
  // /*
  //  *Encabezado
  //  */
  // $hoja->setCellValue('C1', 'PROYECTO CONCESIÓN VÍAS DEL NUS VINUS');
  // $hoja->setCellValue('C2', 'REGISTRO DE PETICIONES, QUEJAS, RECLAMOS Y/O SOLICITUDES PGGS');
  // //Merge logo ANI
  // $hoja->mergeCells('A1:B3');
  // //Merge Titulo
  // $hoja->mergeCells('C1:L1');
  // $hoja->mergeCells('C2:L3');
  // //Merge logo VINUS
  // $hoja->mergeCells('M1:N3');
  // //Informacion adicional
  // $hoja->setCellValue('O1', 'Código: GCSP-F-136');
  // $hoja->mergeCells('O1:Q1');
  // $hoja->setCellValue('O2', 'Versión: 1.00');
  // $hoja->mergeCells('O2:Q2');
  // $hoja->setCellValue('O3', 'Fecha: ' . date("d/m/y"));
  // $hoja->mergeCells('O3:Q3');
  // //Logo ANI
  // $objDrawing = new PHPExcel_Worksheet_Drawing();
  // $objDrawing->setName('Logo Hatovial S.A.S.');
  // $objDrawing->setDescription('Logo de uso exclusivo de Hatovial S.A.S.');
  // $objDrawing->setPath('./img/logo_ani.jpg');
  // $objDrawing->setCoordinates('A1');
  // $objDrawing->setHeight(50);
  // $objDrawing->setWorksheet($objPHPExcel->getActiveSheet());
  // $objDrawing->getShadow()->setDirection(45);
  // $objDrawing->setOffsetX(25);
  // $objDrawing->setOffsetY(5);
  //
  // //Logo VINUS
  // $objDrawing = new PHPExcel_Worksheet_Drawing();
  // $objDrawing->setName('Logo Hatovial S.A.S.');
  // $objDrawing->setDescription('Logo de uso exclusivo de Hatovial S.A.S.');
  // $objDrawing->setPath('./img/logo.png');
  // $objDrawing->setCoordinates('M1');
  // $objDrawing->setHeight(50);
  // $objDrawing->setWorksheet($objPHPExcel->getActiveSheet());
  // $objDrawing->getShadow()->setDirection(45);
  // $objDrawing->setOffsetX(40);
  // $objDrawing->setOffsetY(5);
  //
  // /*
  //  * Cuerpo
  //  */
  //  $hoja->setCellValue('A8', 'FECHA');
  //  $hoja->setCellValue('A9', 'DD');
  //  $hoja->setCellValue('B9', 'MM');
  //  $hoja->setCellValue('C9', 'AA');
  //
  //  $hoja->setCellValue('D8', 'TIPO DE SOLICITUD');
  //  $hoja->setCellValue('D9', 'P');
  //  $hoja->setCellValue('E9', 'Q');
  //  $hoja->setCellValue('F9', 'R');
  //  $hoja->setCellValue('G9', 'S');
  //
  //
  //  $hoja->setCellValue('H8', 'RADICADO DE INGRESO');
  //  $hoja->setCellValue('J8', 'NOMBRE DE SOLICITANTE');
  //  $hoja->setCellValue('M8', 'IDENTIFICACIÓN');
  //  $hoja->setCellValue('O8', 'MUNICIPIO');
  //  $hoja->setCellValue('Q8', 'ASUNTO');
  //
  // /*
  //  * Combinacion de celdas Cuerpo
  //  */
  //  $hoja->mergeCells('A8:C8');
  //  $hoja->mergeCells('D8:G8');
  //  $hoja->mergeCells('H8:I9');
  //  $hoja->mergeCells('J8:L9');
  //  $hoja->mergeCells('M8:N9');
  //  $hoja->mergeCells('O8:P9');
  //  $hoja->mergeCells('Q8:R9');
  //
  //
  // /*
  //  * Definicion de los estilos
  //  */
  // $hoja->getStyle('C1:L3')->applyFromArray($estilo_titulos);
  // $hoja->getStyle('A8:Q9')->applyFromArray($estilo_titulos);
  // $hoja->getStyle('O1:Q3')->applyFromArray($estilo_totales);
  // //Se genera el excel
  //
  // $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
  // $objWriter->save('php://output');
  // exit;

  // $objPHPExcel = new PHPExcel();
  //
  // $objPHPExcel->getProperties()
  // 	->setCreator("Luis David Moreno Lopera - VINUS S.A.S.")
  // 	->setLastModifiedBy("Luis David Moreno Lopera")
  // 	//->setTitle("Sistema de Gestión Socio Ambiental - Generado el ".$this->auditoria_model->formato_fecha(date('Y-m-d')).' - '.date('h:i A'))
  // 	->setSubject("Recepcion de solicitudes")
  // 	->setDescription("Descripción recepcion solicitudes")
  // 	->setKeywords("recepcion solicitudes")
  //     ->setCategory("Reporte");
  //
  //   $objPHPExcel->getActiveSheet()->getDefaultColumnDimension()->setWidth(10);

  $file = './fmt-prueba.xlsx';
  $tipo = 'Excel2007';
  $Reader = PHPExcel_IOFactory::createReader($tipo);
  $objPHPExcel = $Reader->load($file);
  $hoja = $objPHPExcel->getActiveSheet()->setTitle('hoja 1');
  $hoja->setCellValue('A17', 'HOLA MUNDO');


  header('Cache-Control: max-age=0');
  header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
  header('Content-Disposition: attachment; filename="Recepcion_solicitudes.xlsx"');

  $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
  $objWriter->save('php://output');
  exit;

?>
