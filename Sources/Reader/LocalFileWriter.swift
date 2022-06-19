//
//  LocalFileWriter.swift
//  
//
//  Created by Łukasz Stachnik on 19/06/2022.
//

import Foundation

public struct LocalFileWriter: FileWriter {
    
    let fileManager: FileManager
    
    init(fileManager: FileManager = FileManager.default) {
        self.fileManager = fileManager
    }
    
    public func write(fileName: String, content: Data?) throws {
        let created = fileManager.createFile(atPath: fileName, contents: content)
        
        if !created {
            throw FileWriterError.fileWriteError
        }
    }
}
