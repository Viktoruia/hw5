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
