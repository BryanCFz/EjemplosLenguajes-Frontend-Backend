// window.alert("hola mundo");

function funcion_PerroCatreJijueputa(){
  //alert("hola mundo");
  console.log("jijiji perro jijueputaaa");
}



function is_errorField(){
  var campo = document.getElementById('idNumeroPrimo').value;

  if(campo == ''){
    //alert("el campo es vacio");
    document.getElementById("mensajeError").innerHTML = "Escriba un número ¡NO SEA ASÍ!...   Vea que el campo no puede estar vacio";
  }
  else {
    if ( isNaN(camp) ) {
      //alert("el campo no es numerico");
      document.getElementById("mensajeError").innerHTML = "Escriba un número ¡NO SEA ASÍ!...   No ponga ni letras ni caracteres raros";
    }
    else{
      //console.log("Es un numero = " + campo)
      
    }
  }
}
