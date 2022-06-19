//
//  Writer.swift
//  
//
//  Created by Łukasz Stachnik on 19/06/2022.
//

import Foundation

public protocol FileWriter {
    func write(fileName: String, content: Data?) throws
}

enum FileWriterError: Error {
    case fileWriteError
}
