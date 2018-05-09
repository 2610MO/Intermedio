
//: Playground - noun: a place where people can play

import UIKit

//VARIABLES Y CONSTANTES

        //Variable
    var nombre = "Pedo"

        //constante
    let apellido = "Vazquez"

//TIPOS DE DATOS

        //Cadena
    var nombre1: String
    nombre1 = "david"

        //Entero
    var edad: Int
    edad = 25

        //Flotante
        //tiene espacio limitado
    var longitud: Float
        //Para ver la diferencia entre double y float cambiar  el tipo de variable longitud a double
    //var longitude : Double
    longitud = -86.783333
    longitud = -186.783333
    longitud = -1286.783333
    longitud = -12386.783333
    longitud = -123486.783333
    longitud = -1234586.783333

    //Para ver la diferencia entre double y float cambiar  el tipo de variable longitud a double
    //var longitude : Double
var longitude: Double
    longitude = -86.783333
    longitude = -186.783333
    longitude = -1286.783333
    longitude = -12386.783333
    longitude = -123486.783333
    longitude = -1234586.783333

        //Doble recomendado usar por apple
        //Tiene el doble de exactitud que el doble por eso es mejor usarlo (no  es necesario cortar el numero)
    var latitud: Double
    latitud = 36.166667

        //booleano
    var vivoEnElSemestre: Bool
    vivoEnElSemestre = true

    var nothingInBrain: Bool
    nothingInBrain = true

    var missABeat: Bool
    missABeat = false

    //tambien valido
    var apellido1: String = "Rodriguez"

    //Tipado inferido (el leguaje lo reconoce es preferido usar el anterior)
    var edad1 = 45
    var longitude2 = -86.783333//siempre swift escojera double
    type(of:longitude2)

    var nothingInBrain1 = false

//OPERADORES
    var a = 10
    a = a + 1
    a = a - 1
    a = a * a
    a = a / a
        //modulus divide el numero de la izquierda con el de la derecha y regresa el residuo
    a = 9 % 3

    var b = 10

        //incremento
    b += 10

        //decremento
    b -= 10

    var c = 1.1
    var d = 2.2
    var e = c + d

        //Juntar 2 cadenas
    var string1 = "Hola"
    var string2 = "estas"
    var both = string1 + " como " + string2
//OPERADORES DE COMPARACION

    c > 3
    c >= 3
    c > 4
    c < 4

    nombre == "Pedro"
    nombre != "Pedro"

    vivoEnElSemestre
    !vivoEnElSemestre

//Interpolacion de cadenas


    "tu nombre es \(nombre)"
    "tu nombre es " + nombre //ineficiente

    "tu nombre es \(nombre), tu edad es \(edad), y tu latidud es \(latitud)"
    "Tu edad es \(edad).En otros \(edad) años tu edad sera \(edad * 2) "

//Arreglos

    var numerosPar = [2,4,6,8]
    type(of:numerosPar)

    var songs = ["Digital Love","Get lucky","Arround the World"]
    songs[0]
    songs[1]
    songs[2]
    type(of:songs)

    var songs1: [Any] = ["Instant crush","Something about us",3]
    type(of:songs1)


    songs += ["Everything has changed"]

    var songs3: [String] = []

    var songs4 = [String]()

//condicionales

    var action: String
    var person1 = "hater"

    if person1 == "hater"{
        action = "hate"
    } else if person1 == "player"{
        action = "play"
    } else{
        action = "cruise"
    }

//loop

    for i in 1...10{
        print("\(i) X 10 is \(i * 10)")
    }

    var str = "Fakers gonna"

    for _ in 1...5{
     str += " fake"
    }

    print (str)
    //loop en arreglos
    for song in songs{
        print("My favorite song is \(song)")
    }

    var people = ["player", "haters", "heart-breakers", "fakers"]
    var actions = [" play", " hate", " break", " fake"]

    for i in 0..<people.count{
        print ("\(people[i]) gonna \(actions[i])")
    }

    print("\n\n\n")

    //loop dentro de loop
    for i in 0..<people.count{
        
        
        print ("\(people[i]) gonna")
        for _ in 1...5{
            str += " \(actions[i])"
        }
        
        print (str)
    }

    var counter = 0
    while counter != 10{
        print("couter is now \(counter)")
        counter += 1
    }

    for song in songs{
        if song == "You belong with Me"{
            continue
        }
        print("My favorite song is \(song)")
    }
    //Switch case

    let liveAlbums = 2

    switch  liveAlbums {
    case 0:
        print("You`re just starting out")
    case 1:
        print("You just realeases iTunes Live From SoHo")
    case 2:
        print("You  just released Speak Now World Tour")
    default:
        print("Have you done something new?")
    }

//Funciones

    func albumFavorito(){
        print ("mi album favorito es R.A.M")
    }
    albumFavorito()

    func albumFavorito(name:String){
        print("Mi album favorito es  \(name)")
    }
    albumFavorito(name: "Random Access Memories")

    func lanzamientoDeAlbum(name: String, year:Int){
        print("\(name) fue lanzado en \(year)")
    }

    lanzamientoDeAlbum(name: "Random Access Memories", year: 2013)

    func countLettersInString(myString str: String) {
        print("La cadena \(str) tiene  \(str.count) letras.")
    }

    countLettersInString(myString: "Hello")

    //retornar valores

    func albumIsTaylor(name: String)->Bool{
        if name == "Taylor Swift"{return true}
        if name == "Fearless"{return true}
        if name == "Speak Now"{return true}
        if name == "Red"{return true}
        if name == "1989"{return true}
        return false
    }

    func albumIsTaylor1(name: String)->Bool{
        switch name {
        case "Taylor Swift":
            return true
        case "Fearles":
            return true
        case "Speak Now":
            return true
        case "Red":
            return true
        case "1989":
            return true
        default:
            return false
        }
    }
