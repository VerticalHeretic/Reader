//
//  LocalFileReader.swift
//  
//
//  Created by Łukasz Stachnik on 19/06/2022.
//

import Foundation

public struct LocalFileReader: FileReader {
    let fileManager: FileManager
    
    init(fileManager: FileManager = FileManager.default) {
        self.fileManager = fileManager
    }
    
    public func read(_ inputPath: String) throws -> String {
        guard let data = fileManager.contents(atPath: inputPath) else {
            throw FileReaderError.fileNotFound(name: inputPath)
        }
        
        guard let savedData = String(data: data, encoding: .utf8) else {
            throw FileReaderError.fileReadError
        }
        
        return savedData
    }
}
