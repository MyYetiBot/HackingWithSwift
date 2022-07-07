import UIKit

// Tworzenie zmiennej
var str = "Hello, playground"
// Zmiana wartości
str = "Goodbye"

var favoriteShow = "Orange is the New Black"
favoriteShow = "The Good Place"
favoriteShow = "Doctor Who"

var age = 38
var population = 8_000_000

var meaningOfLife = 42
// Nie można zmienić typu danej po jej zdeklarowaniu:
// meaningOfLife = "Forty two" -> error

// Tekst wyświetlony w kilku linijkach
var str1 = """
This goes
over multiple
lines
"""

// Tekst wyświetlony w jednej linijce
var str2 = """
This goes \
over multiple \
lines
"""

// Dane typu Doubles - ułamki
var pi = 3.141
// Dana typu Boolean - true lub false tylko
var awesome = true

// Dane typu Int i Double nie mogą się mieszać
var myInt = 1
var myDouble = 1.0

// String Interpolation
var score = 85
var myString = "Your score was \(score)"
var results = "The test results are here: \(myString)"

//Wartość Constant ustanowiona jest tylko raz i nie może być zmieniona
let taylor = "swift"

// Type annotation
let album: String = "Reputation" // String
let year: Int = 1989    // Integer
let height: Double = 1.78 // Double
let taylorRocks: Bool = true // Boolean
