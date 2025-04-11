//
//  GoodTaggedDataClass.swift
//  Swift-Protocol-Oriented-Programming
//
//  Created by Andrii Vitvitskyi on 11/04/2025.
//

import Foundation

class GodTaggedData {

    var tag: String
    var data: Data

    init(tag: String, data: Data) {
        self.tag = tag
        self.data = data
    }

    convenience init(tag: String, contentOf url: URL) throws {
        let data = try Data(contentsOf: url)
        self.init(tag: tag, data: data)
    }

    func persist(to url: URL) throws {
        try self.data.write(to: url)
    }

    var base64EncodedString: String {
        data.base64EncodedString()
    }
}

// Problems:
// This class against the Single responsibility principle. One of SOLID principles.
// One class should has one defined responsibility
// GodTaggedData Class:
//   - Holds data along with a unique identifier
//   - Stores and loads data from the filesystem
//   - Returns Base64-encoded representation
