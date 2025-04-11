//
//  GenericTypes.swift
//  Swift-Protocol-Oriented-Programming
//
//  Created by Andrii Vitvitskyi on 11/04/2025.
//

import Foundation

// MARK: - Problem

struct IntWrapper {
    var storage: Int
}

struct StringWrapper {
    var storage: String
}

struct DateWrapper {
    var storage: Date
}

// MARK: - Generic solution

struct Wrapper<T> {
    var storage: T

    init(storage: T) {
        self.storage = storage
    }
}

class TestGenericsClass {
    func testGenericTypes() {
        let intValue: Int = 12
        let intWrapped = Wrapper(storage: intValue)
        print(intWrapped)

        let stringValue: String = "MyString"
        let stringWrapped = Wrapper(storage: stringValue)
        print(stringWrapped)

        let dateValue: Date = Date()
        let dateWrapped = Wrapper(storage: dateValue)
        print(dateWrapped)
    }
}
