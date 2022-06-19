//
//  Reader.swift
//  
//
//  Created by Łukasz Stachnik on 19/06/2022.
//

import Foundation

public protocol FileReader {
    func read(_ inputPath: String) throws -> String
}

enum FileReaderError: Error {
    case fileNotFound(name: String)
    case fileReadError
}
