//
//  File.swift
//  
//
//  Created by Łukasz Stachnik on 19/06/2022.
//

import XCTest

@testable import Reader

final class LocalFileWriterTests: XCTestCase {
    var mockFileManager: MockFileManager!
    var writer: LocalFileWriter!
    let content = "This is test"
    
    override func setUp() {
        mockFileManager = MockFileManager()
        writer = LocalFileWriter(fileManager: mockFileManager)
    }
    
    func testLocalFileWriterHappyPath() throws {
        XCTAssertNoThrow(try writer.write(fileName: "Test", content: content.data(using: .utf8)))
    }
    
    func testLocalFileWriterFileWriteErrorFail() throws {
        mockFileManager.shouldCreateFile = false
        XCTAssertThrowsError(try writer.write(fileName: "Test", content: content.data(using: .utf8)))
    }
}

