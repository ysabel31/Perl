sub factorialize{
  my ($nombre) = @_;
  if( $nombre > 1 ){
    $Nombre = $Nombre * factorialize($Nombre -1);		
  }
  else{
    return 1	
  }	
}
factorialize(5);
