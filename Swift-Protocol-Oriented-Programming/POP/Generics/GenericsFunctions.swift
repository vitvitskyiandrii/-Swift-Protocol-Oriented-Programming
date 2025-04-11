//
//  GenericsExamples.swift
//  Swift-Protocol-Oriented-Programming
//
//  Created by Andrii Vitvitskyi on 11/04/2025.
//

import Foundation

class Problem {

    func equals(lhs: Int, rhs: Int) -> Bool {
        lhs == rhs
    }

    func equals(lhs: Double, rhs: Double) -> Bool {
        lhs == rhs
    }

    func equals(lhs: String, rhs: String) -> Bool {
        lhs == rhs
    }

    func equals(lhs: Float, rhs: Float) -> Bool {
        lhs == rhs
    }

    func testExamples() {
        let intEquals = equals(lhs: 12, rhs: 12)
        print(intEquals)
        let doubleEquals = equals(lhs: 12.23, rhs: .pi)
        print(doubleEquals)
        let stringEquals = equals(lhs: "String", rhs: "String")
        print(stringEquals)
        let floatEquals = equals(lhs: 12.3, rhs: 32.21)
        print(floatEquals)
        // .....
    }

    // This class against the DRY (Don't repeat yourself principle)
}

class GenericExamples {

    func equals<T: Equatable>(lhs: T, rhs: T) -> Bool {
        lhs == rhs
    }

    func testExamples() {
        let intEquals = equals(lhs: 12, rhs: 12)
        print(intEquals)
        let doubleEquals = equals(lhs: 12.23, rhs: .pi)
        print(doubleEquals)
        let stringEquals = equals(lhs: "String", rhs: "String")
        print(stringEquals)
        let floatEquals = equals(lhs: 12.3, rhs: 32.21)
        print(floatEquals)
    }

}
