//
//  GenericProtocols.swift
//  Swift-Protocol-Oriented-Programming
//
//  Created by Andrii Vitvitskyi on 11/04/2025.
//

import Foundation

protocol GenericTaggable {

    associatedtype Content: Equatable

    var tag: String { get set }
    var data: Content { get set }

    init(tag: String, data: Content)
}

struct TaggedDouble: GenericTaggable {
    var tag: String
    var data: Double
}

struct TaggedString: GenericTaggable {
    var tag: String
    var data: String
}

struct GenericTagged<T: Equatable>: GenericTaggable {
    var tag: String
    var data: T
}



class TestGenericProtocol {
    func testGeneticProtocol() {
        let taggedDouble = GenericTagged(tag: "pi", data: Double.pi)
        print(taggedDouble)
        let taggedDate = GenericTagged(tag: "now", data: Date())
        print(taggedDate)
    }
}
