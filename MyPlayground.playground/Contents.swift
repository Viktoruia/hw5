import UIKit
import Foundation

// 1. Создать enum с временами года.

enum Season {
    case winter
    case spring
    case summer
    case autumn
    case nonSeason
}

//2. Написать функцию, которая будет принимать номер месяца (Int) и возвращать enum
//с временем года этого месяца.

func season(numberMonth: Int) -> Season {
    switch numberMonth {
    case 1, 2, 12:
        return .winter
    case 3, 4, 5:
        return .spring
    case 6, 7, 8:
        return .summer
    case 9, 10, 11:
        return .autumn
    default:
        return .nonSeason
    }
}

print("Пора года \(season(numberMonth: 10))")

//3. Написать метод, который принимает variadic parameter String?. (или маасив опцианальных строк [String?]) Метод возвращает
//количество nil объектов и печатает в консоль одну строку всех объединенных не nil
//объектов.

let massString: [String?] = ["V", "i", nil, "k", nil, nil, "a"]
let filterNil = massString.filter { $0 == nil }
let newMassString = massString.compactMap { $0 }
let allNewMassString = newMassString.joined(separator: "")
print("Количество nil элементов в массиве строк равно \(filterNil.count). Новая строка - \(allNewMassString)")

// 4. Объявить опцианал, и сделать его разворачивание разными способами.

var age: Int! = 23
print(age + 345)

// guard let
func myName(name: String?) -> String{
    guard let unwrapperName = name else {
        return "Нет имени"
    }
    return unwrapperName
}
print("Мое имя - \(myName(name: nil))")

// if let
func myAge(ageMy: Int?) -> Bool {
    if let unwrapperAge = ageMy {
            return true
    } else {
        return false
    }
}
print("Вы ввели свой возраст? \(myAge(ageMy: nil))")

// новая конструкция, замена if let

func myPets(pets: Bool?) -> String {
    if let pets {
        return "Ты заполнил эту строку"
    } else {
        return "Заполни строку"
    }
}
print(myPets(pets: true))

// коалесценция

let petsNumbers: Int? = nil
let otherPets: Int = petsNumbers ?? 9
print(otherPets)
