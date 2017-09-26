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
    //alert("el campo no es numerico");
    if ( isNaN(parseInt(campo)) ) {
      document.getElementById("mensajeError").innerHTML = "Escriba un número ¡NO SEA ASÍ!...   No ponga ni letras ni caracteres raros";
    }
    else{
      //alert("no entra en validacion de campo numerico")

      //console.log('nuururu = ' + campo);
    }
  }
}
