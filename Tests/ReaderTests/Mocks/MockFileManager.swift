//
//  File.swift
//  
//
//  Created by Łukasz Stachnik on 19/06/2022.
//

import Foundation

class MockFileManager: FileManager {
    
    var mockContent = ""
    var shouldReturnNil = false
    var shouldCreateFile = true
    var withEncoding: String.Encoding = .utf8
    
    override func contents(atPath path: String) -> Data? {
        if shouldReturnNil {
            return nil
        }
        
        return mockContent.data(using: withEncoding)
    }
    
    override func createFile(atPath path: String, contents data: Data?, attributes attr: [FileAttributeKey : Any]? = nil) -> Bool {
        return shouldCreateFile
    }
}
