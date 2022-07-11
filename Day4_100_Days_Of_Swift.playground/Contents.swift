import UIKit

// 1. For Loops

let count = 1...10 // Zakres numerów
for number in count { // wydrukuj 10x
    print("Number is \(number)")
}

// Albo policz do dziesięciu
for number in count {
    print("Number is \(number)")
}

// Albo z Arrays:
let albums = ["Red", "1989", "Reputation"]
for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna ")
for _ in 1...5 { // Użyj _ zamiast constant
    print("play")
}

let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]


for name in names { // użyj constant z for loop
    print("\(name) is a secret agent")
}

for _ in names { // nie używasz constant, użyj _
    print("[CENSORED] is a secret agent!")
}

// 2. While Loops
var number = 1

while number <= 20 { // sprawdza czy numer jest mniej niż 20
    print(number)
    number += 1 // numer + 1
}
// numer 21 - wychodzimy z pętli
print("Ready or not, here I come!")


// 3. Repeat loops

var number2 = 1

repeat {
    print(number2)
    number2 += 1
} while number2 <= 20 // warunek na końcu

print("Ready or not, here I come!")

// Główna różnica między while i repeat

while false { // nigdy nie wykona kodu
    print("This is false")
}

repeat { // wykona ten kod raz
    print("This is false")
} while false

// użycie while loop w tym przypadku powoduje niepotrzebne powtórzenie kodu:
let numbers = [1, 2, 3, 4, 5] // Nasz Array
var random = numbers.shuffled() // Nowy Array random, gdzie nasze liczby są przemieszane

while random == numbers { // jeżeli array random jest identyczny do array numbers
    random = numbers.shuffled() // przemieszaj liczby
}

// lepiej użyć repeat, kod jest dużo prostszy
let numbers2 = [1, 2, 3, 4, 5]
var random2: [Int]

repeat {
    random2 = numbers2.shuffled() // przemieszaj
} while random2 == numbers2// jeśli ciągle arrays są te same, Powtórz kod

//4.  Exiting loops

var countDown = 10

while countDown >= 0 {
    print(countDown)
    countDown -= 1
}

print("Blast off!")

var countDown2 = 10
while countDown2 >= 0 {
    print(countDown2)

    if countDown2 == 4 {
        print("I'm bored. Let's go now!")
        break // przerwij pętle tutaj
    }

    countDown2 -= 1
}

let scores = [1, 8, 4, 3, 0, 5, 2] // wyniki naszego gracza

var count2 = 0

for score in scores { // pętla powtórzy się przez każdą pozycję w Array
    if score == 0 { // znaleźliśmy 0 a array!
        break // przerywamy pętle
    }

    count2 += 1 // licznik, ile razy zanim 0
}

print("You had \(count2) scores before you got 0.") // wyszliśmy z pętli

// 5. Exiting multiple loops

for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}

outerLoop: for i in 1...10 { // 1. Nazwij zewnętrzną pętlę
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 { // 2. Dodaj warunek przerwania
            print("It's a bullseye!")
            break outerLoop // przerwij obie pętle jednocześnie
        }
    }
}

// Ciekawy kod na złamanie szyfru:
let options = ["up", "down", "left", "right"] // opcje dla sejfu
let secretCombination = ["up", "up", "right"] // kombinacja, która otwiera sejf. Zmień ją, żeby zobaczyć ile razy zanim znajdzie szyfr.

outerLoop: for option1 in options { //
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop
            }
        }
    }
}

//6. Skipping items

for i in 1...10 { // licz od 1 do 10
    if i % 2 == 1 { // jeśli liczba jest nieparzysta
        continue // pomiń ją i sprawdź następny numer
    }

    print(i) // wyświetl liczbę parzystą
}

//7. Infinite loops

var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 { //warunek: kiedy licznik osiągnie 273, wychodzimy z pętli
        break
    }
}
