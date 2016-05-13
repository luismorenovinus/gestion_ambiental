<?php


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
