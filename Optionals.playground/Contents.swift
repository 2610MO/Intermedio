//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


struct Book {
    var name: String
    var publicationYear: Int?
}


let firstHarryPotter = Book(name: "Harry Potter and the Sorcerer`s Stone", publicationYear: 1997)

let secondHarryPotter = Book(name: "Harry Potter and the chamber of Secrets", publicationYear: 1997)

let thirdHarryPotter = Book(name: "Harry Potter and the prisioner of Azkaban", publicationYear: 2017)

let books = [firstHarryPotter,secondHarryPotter,thirdHarryPotter]



let unnannouncedBook = Book(name: "Rebels and Lions", publicationYear: nil)


var serverResponseCode: Int? = nil

//Working With optional

if thirdHarryPotter.publicationYear != nil {
    let actualYear = thirdHarryPotter.publicationYear!
    print(actualYear)
}else{
    print("Error")
}

let unwrappedYear = thirdHarryPotter.publicationYear

//print(unwrappedYear)

if let unwrappedPublicationYear = thirdHarryPotter.publicationYear{
    print("The book was published in \(unwrappedPublicationYear)")
}

//let string = "123"
//let posibleNumber = Int(string)

let string = "cynthia"
let posibleNumber = Int(string)


//func printFullName(firstName: String, middleNmae: String?, lastName: String)
//
//func textFromUrl(url:URL) -> String?


struct Todler {
    var name: String
    var monthsOld: Int
    
    init?(name:String, monthsOld: Int) {
        if monthsOld < 12 || monthsOld > 36{
        return nil
    }else {
    self.name = name
    self.monthsOld = monthsOld
    }
    }
}

let possibleTodler = Todler(name: "Joanna", monthsOld: 10)

possibleTodler?.monthsOld

if let todler = possibleTodler{
    print("\(todler.name) is \(todler.monthsOld) months Old")
}else{
    print("The age you specified fot the toddler is not between 1 and 3 yrs of age")
}

//Optiopnal Chaining

class Person {
    var age: Int
    var residence: Residence?
    init(age: Int, residence:Residence) {
        self.age = age
        self.residence = residence
    }
}

class Residence {
    var address: Address?
    
    init(address: Address) {
        self.address = address
    }
}

class Address {
    var buildingNumber: String
    var streetName: String
    var apartamentNumber: String?
    
    init(buildingNumber: String, streetName: String, apartamentNumber: String) {
        self.buildingNumber = buildingNumber
        self.streetName = streetName
        self.apartamentNumber = apartamentNumber
    }
}


var address = Address(buildingNumber: "10", streetName: "Calle", apartamentNumber: "2")

var residence = Residence(address: address)

var person = Person(age: 20, residence: residence)

//if let theResidence = person.residence {
//    if let theAddress = theResidence.address {
//        if let theApartmentNumber = theAddress.apartamentNumber{
//            print("He/She Lives in apartment number \(theApartmentNumber).")
//        }
//    }
//}


if let theApartamentNumber = person.residence?.address?.apartamentNumber {
    print("He/She Lives in apartment number \(theApartamentNumber).")
}

//https://github.com/2610MO
