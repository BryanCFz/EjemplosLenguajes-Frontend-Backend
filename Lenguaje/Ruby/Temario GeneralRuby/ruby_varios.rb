# https://ruby-doc.org/core-2.1.4/Hash.html
# https://www.tutorialspoint.com/ruby/index.htm

# => Execut console ATOM           =  Ctrl Shief b

################################################################

#       FUNCIONES Y CONVERSIONES
# object_id     # => saber el identificador de un objeto o variable
# puts print    # => mostrar datos
                # puts, deja un "\n" por default al final
# gets  gets()  # => entrada por teclado
                # deja un "\n" por default al final
# chomp         # => quirta el "\n" del final
# to_i  to_f    # => integer  float
# even?         # => numero par
# next          # => siguiente numero, como un contador++
################################################################

#       CREAR COMENTARIOS
# => Document after text selected =  Ctrl /
# => Or use sintax down, i'ts should be "=begin AND =end"  no spaces
=begin
  nombre = "BryanCFz"
  nombre = gets.chomp   # => convierte resultado del teclado en STRING
  puts "Hola #{nombre} bienvenido al mundo Ruby"
  puts "hola"
=end
################################################################

#       COMPARACIONES
# <=> comparacion entre dos OBJETOS
# puts 10 <=> 10 # ambos son iguales        =  0
# puts 20 <=> 10 # primero mayor al segundo =  1
# puts 10 <=> 20 # segundo mayor al primero = -1
# 1.eql?(1.0)    # mismo valor AND mismo tipo = false
################################################################

#       IF(true)   UNLESS(false)
# numero = gets.chomp.to_i
# numero = 27
# if numero.even?
#   puts "#{numero} es par"
# else
#   puts "#{numero} es impar"
# end

# respuesta = if numero.even? then
#   "Es par"
# else
#   "Es impar"
# end

# if ternario
# respuesta = numero % 2 == 0 ?  "Es par" : "Es impar"
# puts respuesta
################################################################

#       CASE
# calificacion = 9
# case calificacion
# when 5,6,7,8
#     puts "excelente"
#   when 4
#     puts "sobresaliente"
#   when 3
#     puts "aceptable"
#   else #default
#     puts "Estas en la olla u.u"
# end
################################################################

#       WHILE(true)   until(false)
# numeroMagico = 8
# numeroUsuario = 7
# # while
# while numeroUsuario != numeroMagico
#   puts "Incorrecto, adivina oitra ves"
#   numeroUsuario - gets.chomp.to_i
# end
# # do while
# begin
#   numeroUsuario--
# end while  numeroUsuario < 0
# # negacion while (FALSE)
# until numeroUsuario == numeroMagico
#   puts "Incorrecto, adivina oitra ves"
#   numeroUsuario - gets.chomp.to_i
# end
################################################################

#       ARREGLOS

# => 1. Arreglo generico
# arreglo = [3, 'cadenaString', true]
# arreglo[arreglo.length] = 'elementoDinamico-1'
# arreglo[arreglo.size] = 'otroelementoDinamico-2'
# arreglo << 'insertarFinal'

# => 2. Arreglo de Strings "%w[]" , solo se necesita dejar espacios en el arreglo
# arreglo = %w[10 11 1990 'BryanCFz']
# puts arreglo

# => 3. ciclo each "iterar normal"
# calificaciones  = [2.5, 4.5, 5, 3, 3.5, 4, 1, 2, 1]
# suma = 0

# calificaciones.each do |notica|                      # => sin indice, OPCION-1
# calificaciones.each_with_index do |notica, posicion| # => con indice, OPCION-2
#   puts "numero de nota [ #{posicion} ] nota =  #{notica}"
#   suma += notica.to_f
# end
# puts "promedio de notas = #{suma / calificaciones.size}"

# => 4. Hacer un JOIN a un arreglo
# puts calificaciones * " - "
# puts calificaciones * join(" - ")

# => 5. funciones arreglos
# puts calificaciones.reverse       # mostrar arreglo al contrario
# puts calificaciones.uniq          # mostrar elementos sin repetir
# puts calificaciones.first         # mostrar primer elemento
# puts calificaciones.last          # mostrar ultimo elemento
# puts calificaciones.include?(3.5) # incluye elemento, true o false
#       Rangos
# puts (5..30).min                  # mostrar valor minimo
# puts (5..30).max                  # mostrar valor maximo

# => 6. Ordenar arreglo
# puts calificaciones.sort          # ordenar ASCENDENTE
# puts calificaciones.sort.reverse  # ordenar DESCENDENTE

# => 7. Rangos arrays
# step = mostrar los numros de 2 en 2
# (1..13).step(2).each do |numero|
#   puts numero
# end

# mostrar abecedario
# ('a'..'z').each do |letrica|
#   print letrica + ","
# end

# convertir un rango a un ARRAY
# puts (1..13).to_a.reverse
# puts ('ma'..'md').to_a  # ma mb mc md

# => 8. TIMES , UPTO , DOWNTO
# TIMES mostrar del 1 al 10
# 10.times do |i|
#   print i + 1
#   print "#{i + 1} - "
# end

# UPTO mostrar del "(N-numero=5)" al 10 - ASCENDENTE
# 5.upto(10) do |i|
#   puts i
#   print "#{i + 1} - "
# end

# DOWNTO mostrar del "(N-numero=10)" al 5 - DESCENDENTE
# 10.downto(5) do |i|
#   print "#{i} - "
# end

# => 1. A


# => 1. A


# => 1. A


# => 1. A
################################################################

#       MATRIZ
# Inicializa la contante "Matriz"
# require 'matrix'
#
# matriz = Matrix[[1,2,3],[4,5,6],[7,8,9]]
#
# matriz.each do |mati|
#     puts mati
# end
################################################################

#       HASH - Para cualquier tipo de OBJETO:  <clave => valor>
# animales = {
#   "nombre" => "shushi",
#   "tipo"   => "felino",
#   "raza"   => "siames balines",
#   "años"   => 3,
#   []       => ["tutu",2013, "3 anios en casa", 1]
# }
# animales["fieldNew_pais"] = "colombia"
# animales.default = ":) No existe campo"
  # puts animales
  # puts animaless["nombre"]


# => MERGE , AGREGAR AL FINAL MAS CAMPOS DE TOTAZO
# usuario = {
#   "user" => "bcortesf",
#   "pass"   => "contasenita"
# }
# persona = {
#   "nombreCompleto" => "BryanCFz"
# }
# puts usuario.merge(persona)


# universidad = {
#   nombre: "Ucentral",
#   tipo: "privada"
# }
  # puts universidad[:nombre]
# universidad.each do |clave,valor|
#   puts "En campo[#{clave}] esta guardado: #{valor}"
# end


# mico = {
#   nombre: "gorila",
#   numPatas: 4
# }
            # puts mico[:nombre]
# se usa para cuando recibamos un hasMap de algun lado
#podamos verificar si contiene un campo en especifico (TRUE ó FALSE)
# puts mico.has_key?(:nombre1)
# puts mico.has_value?(4)
# puts mico.keys      # mostrar todos los NOMBRES llaves
# puts mico.values    # mostrar todos los NOMBRES valores
# puts mico.key("gorila")      # mostrar NOMBRE del campo
# puts mico.invert     # Intercambiar los "titulos" VALOR->CLAVE .. CLAVE<-VALOR


# puts mico.value    # mostrar todos los NOMBRES valores

# puts mico.clear # limpiar y dejar vacio el hasMap
# puts mico.empty? # TRUE ó FALSE
# mico.delete(:numPatas)    #Eliminar un campo

################################################################
################################################################
################################################################
################################################################
################################################################

#       METODOS P.O.O
# retornar CERO a <menosque(FALSE): lado ES UN ARREGLO>: lado*lado
# def cuadrado(lado)
#   return 0 unless lado.is_a? Integer
#   lado * lado
# end
# puts cuadrado(4)

# => 1.1 cambiar la forma del ech  do end, por sintaxis de LLAVES
# def hola_gente(people)
#   people.each { |personita|
#     puts "Hola #{personita}"
#   }
# end
# hola_gente( ["BryanCFz", "ShushiMoticas"] )

# => 1.2 Recibir *TODOS* los parametros que quiera, y seran convertidos todo en ARRAY
#  * = Operador SPLAT
# def hola_gente(mensaje,*people)
#   people.each { |personita|
#     puts "#{mensaje} #{personita}"
#   }
# end
              # OPCIÓN 1
# hola_gente( "hOOOLA ","BryanCFz", "ShushiMoticas", 123 )
              # OPCIÓN 2
# nombres = ["BryanCFz", "ShushiMoticas", 123]
# hola_gente( "hOOOLA ", *nombres )
################################################################

#       KEY WORDS -  METHODS
# Se da valores por DEFAULT a los parametros. En caso de un parametro NULL
# Crea un HASMAP, al final , con los valores que tengan  clave y valor APARTE DEL METODO
# "apellidObligatorio:,"   = significa que es OBLIGATORIO pasar EL ARGUMENTO y
                          #  se coloca donde uno quiera
# def saludar_tipo_persona(nombre:"", edad:0, apellidObligatorio:, **opciones)
#   if edad>=30
#     puts "Hola adulto #{nombre}"
#   elsif edad < 30
#     puts "Hola joven #{nombre}"
#   end
#   puts opciones[:aprende]
# end
# puts saludar_tipo_persona(apellidObligatorio:"CF", nombre:"BryanCFz", edad:24, aprende:"lengRuby", plataforma:"goguitoool")
################################################################

#       OBJETOS Y CLASES
# class Carro
#   # => OPCION 1
#   attr_accessor  :marca, :color # => si necesito juntos:  SET-y-GET
#   # attr_reader    :marca, :color # => si SOLO necesito SETTERS
#   # attr_writer    :marca, :color # => si SOLO necesito GETTERS
#
#   # Constructor de la <clase: Carro>
#   def initialize(marca)
#     self.marca = marca
#     # @variablePrivada : VARIABLE-DE-INSTANCIA que solo se reconoce dentro de la clase
#     #cualquier METODO puede acceder a ella y llamarla porque sera GLOBAL
#     # NO SE PUEDE LLAMAR DIRECTAMENTE LA VARIABLE, desde un objeto de instancia de la clase
#     @marca_variableInstanciaPrivada = marca
#   end
#
#   # METODOS
#   def encender_carro
#   end
#   def conducir_carro
#   end
#   def apagar_carro
#   end
#
#   # => OPCION 2
#   #Sirve con SET-y-GET pero por estetica definirlos asi ""SETTERS=() && GETTERS()""
#   #Estos son los atributos de la OPCION-1 :    "attr_accessor"
#   def marca_variableInstanciaPrivada=(marca_variableInstanciaPrivada)
#     @marca_variableInstanciaPrivada = marca_variableInstanciaPrivada
#   end
#   def marca_variableInstanciaPrivada()
#     @marca_variableInstanciaPrivada
#   end
# end
#
# carmazda = Carro.new("mazda222")
# carkia   = Carro.new("kia222")
# carmazda.marca = "mazda"
# carkia.marca = "kia"
# puts carmazda.marca
#  carmazda.marca_variableInstanciaPrivada = "mazdiita"
# puts "Encendere mi carro de marca :#{carmazda.marca_variableInstanciaPrivada}"
################################################################

#       HERENCIA  Y  SOBREESCRIBIR-METODO
# class Video
#   attr_accessor :tittle
#   attr_accessor :duration
#   attr_accessor :description
#
#   def descargarVideo
#     "formato .WAV"
#   end
#
#   def setup(tittle)
#     @tittle = tittle
#   end
# end
#
# class YoutubeVideo < Video
#   attr_accessor :id_youtube
#   # => METODO SOBRE-ESCRITO .. del metodo herado del PADRE
#   def descargarVideo
#     "formato .MP4"
#   end
#
#   def setup(tittle)
#     super
#     #YoutubeAPI.init()
#     puts "Algo extra"
#   end
# end
#
# video = Video.new
# yutub = YoutubeVideo.new
#     # yutub.tittle = "pelicula: Pitatas del Caribe 2017 - Venganza de Salazar"
#     # yutub.id_youtube = "s3465gve6"
#     # yutub.description = "Trata de el pirata sparrow y su barco el perla negra"
# video.setup("Demo")
# yutub.setup("Herencia Ruby")
# # puts video.tittle
# puts yutub.tittle
################################################################

#       ALCANCE METODOS --> scope

# class Humano
#   def initialize
#     # self.publico_metodo
#     #privado_metodo
#   end
#
#   def publico_metodo
#     puts "soy un método público"
#   end
#
#   # =>  apartir de aqui , todos los metodos seran PRIVATE hacia abajo
#   #     a menos que cambie el ALCANCE
#   private
#     def privado_metodo
#       puts "soy un método privado"
#     end
#
#     # =>  apartir de aqui , todos los metodos seran PROTECTED hacia abajo
#     #     a menos que cambie el ALCANCE
#     protected
#       def protegido_metodo
#         puts "soy un método protegido"
#       end
# end
#
# class Tutor < Humano
#   def initialize
#     # self.publico_metodo
#     # => UNA CLASE HIJA PUEDE LLAMAR METODO PRIVADO- en ruby
#     # privado_metodo
#     # protegido_metodo
#
#     @inner = Humano.new
#   end
#
#   def llamar_protegido_metodo
#     @inner.protegido_metodo
#   end
# end
#
# class Alien
#   def initialize
#     @inner = Humano.new
#   end
#
#   def llamar_protegido_metodo
#     @inner.protegido_metodo
#   end
#
# end

  # Humano.new                     # => imprime 1 ves publico_metodo
  # Humano.new.publico_metodo      # => imprime 2 veces publico_metodo
  # Humano.new.privado_metodo      # => imprime una ves y luego ERROR
  # Humano.new.privado_metodo

# Tutor.new.llamar_protegido_metodo     # => LO MUESTRA
# Alien.new.llamar_protegido_metodo   # => no lo permite porque Alien no es un humano, osea del mismo tipo

=begin
1. todos los metodos son publicos
2. Si un metodo es definido PRIVADO, todos los metodos hacia abajo seran privados , asi no se les defina ALCANCE
2.1. Los metodos privados de la clase PADRE se pueden llamar desde otros metodos de las clases HIJAS
2.2 Una Instancia directa.new, no lo podra hacer
3. Si un metodo es definido PROTEGIDOS, todos los metodos hacia abajo seran protegidos , asi no se les defina ALCANCE
3.1. Los metodos protegidos de la clase PADRE se pueden llamar desde otros metodos de las clases HIJAS
3.2 Una Instancia directa.new, no lo podra hacer
3.3 Una Instancia directa.new, lo hara si es llamado de su PADRE, hacia un metodo
=end
################################################################

#       METODOS DE CLASE   ó   CLASS STATIC METHODS

#¿Cuando se deben usar?
# Cuando la funcionalidad que este usando , no le pertenezca a ninguna instancia o a ningun objeto
#por ejemplo:
  # class User end
  # User.new.find() # => NO LE PERTENECE ESTA FUNCIONALIDAD, es mas de una base de datos o algo asi
  #                 # ya que no tiene sentido que un USUARIO.NUEVO busque a otros USUARIOS
  # User.find() # => En este caso si seria metodo de clase
  # ---------------------

# class SoyObjeto
#   @nombre_clase = "SoyObjeto"
#
#   # ***********   STATIC method   ***********
#   # =>  1. alternativa-uno : se define "self" por cada metodo
# =begin
#   def self.nombre_clase
#     @nombre_clase
#   end
#
#   def self.nombre_clase=(nombre_clase)
#     @nombre_clase = nombre_clase
#   end
# =end
#
#   # =>  2. alternativa-dos : se define "self" en la cabecera
#   class << self
#     def nombre_clase
#       @nombre_clase
#     end
#
#     def nombre_clase=(nombre_clase)
#       @nombre_clase = nombre_clase
#     end
#   end
# end
#
# SoyObjeto.nombre_clase = "Yo robot"
# puts SoyObjeto.nombre_clase
################################################################

#       VARIABLE DE CLASE 1.0
# class Video
#   @type1 = "video/mp4"
#   def self.type1_desde_clase
#     p @type1
#   end
#   def type1_desde_objeto
#     p @type1
#   end
#
#   # => VARIABLE STATICA
#   #    Se define con DOBLE @@
#   @@type2 = "video/mp4"
#   def self.type2_desde_clase
#     p @@type2
#   end
#   def type2_desde_objeto
#     p @@type2
#   end
# end
#
# puts "VARIABLES DE CLASE STATICAS"
# Video.type2_desde_clase
# Video.new.type2_desde_objeto
# puts "VARIABLES DE CLASE"
# Video.type1_desde_clase
# Video.new.type1_desde_objeto  #ERROR:
# Porque se esta buscando como una variable del objeto creado
# y no como una variable de la CLASE
################################################################

#       VARIABLE DE CLASE 2.0
# class Video
#   @@de_clase = "clase wooo"
#   @de_instancia = "Instancia yeiii" #clases HIJAS NO TIENEN ACCESO A ESTA, NO HEREDAN
#
#   def self.test
#     p @@de_clase
#     p @de_instancia
#   end
# end
#
# class Youtube < Video
#   def self.test
#     @@de_clase = "Clase cambiada"
#     p @@de_clase
#     p @de_instancia
#   end
# end
#
# Youtube.test  # La variable-Instancia NO MUESTRA, porque solo le pertenece "class Video"
# Video.test #tiene el alcance de su propias variables
################################################################

#       POLIMORFISMO
# class Video
#   def play
#     #Not implemented
#   end
# end
# class Facebook < Video
#   def play
#     p "Insertar reproductor de Facebook"
#   end
# end
# class Youtube < Video
#   def play
#     p "Insertar reproductor de Youtube"
#   end
# end
#
# videos = [Youtube.new, Facebook.new, Facebook.new, Youtube.new, Youtube.new]
# videos.each do |video|
#   video.play
# end
################################################################

#       "yield"  = METODOS QUE RECIBEN BLOQUES

# def metodo_hola
#   # Yield: permite recibir un bloque de codigo aqui dentro
#   if block_given?
#     yield
#     p "RECIBIDO"
#   else
#     #ejecutar si no se recibe ningun bloque de codigo externo
#     puts "NO RECIBI NADA"
#   end
# end
#
# # => no envio NADA
# metodo_hola()
#
# # => envio bloque de codigo
# metodo_hola {
#   puts "Instrucciones recibidas, dentro del metodo"
# }
################################################################
################################################################

#       ALCANCE VARIABLES EN UN BLOQUE
# def metodo_hola
#   yield
# end
#
# nombre = "Bryan Cortes F."
#
# # |argumento1,argumento2;variableLocal1,variableLocal2|
# metodo_hola do |;nombre|
#   #Solo cambiara el nombre DENTRO del metodo
#   nombre = "BryanCFz"
#   puts "Hola #{nombre}"
# end
# # por fuera regresa a su valor original
# puts nombre
################################################################

#       ARGUMENTOS Y VALOR RETORNADO EN BLOQUES ..
# class Usuario
#   attr_accessor :nombre, :tituloProfesional
#   # => FORMA-1
#   def saludar1
#     yield(@nombre, @tituloProfesional)
#   end
#   # => FORMA-2
#   def saludar2
#     saludo = yield(@nombre, @tituloProfesional)
#     puts saludo
#   end
# end
#
# bryan = Usuario.new
# bryan.nombre = "BryanCFz"
# bryan.tituloProfesional = "Ing. sistemas"
#
# bryan.saludar1 { |nombrew, profesional| puts "Hola #{nombrew} :)  #{profesional}" }
# bryan.saludar2 { |nombrew, profesional| puts "Hola #{nombrew} :)  #{profesional}" }
#
# bryan.saludar2 do |nombrew, profesional|
#   saludo = "Hola #{nombrew} :)  #{profesional}"
# end
################################################################

#       " & "    -    METODOS QUE RECIBEN BLOQUES
# def hola &bloque
#   otro_hola(&bloque)
# end
#
# def otro_hola &bloquesitoCodigo
#   puts "Mandando a llamar desde =   otro_hola"
#   bloquesitoCodigo.call
# end
#
# hola{
#   puts "Hola mundo"
# }
################################################################

#       PROC
def hola proc1, proc2
  proc1.call
  proc2.call
end

proc1 = Proc.new {
  puts "Hola proc1"
}

proc2 = Proc.new {
  puts "Hola proc2"
}

hola(proc1,proc2)
################################################################

#       T
# a =
################################################################
