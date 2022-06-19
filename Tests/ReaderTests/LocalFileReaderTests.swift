//
//  LocalFileReaderTests.swift
//  
//
//  Created by Łukasz Stachnik on 19/06/2022.
//

import XCTest

@testable import Reader

final class LocalFileReaderTests: XCTestCase {
    
    var mockFileManager: MockFileManager!
    var reader: LocalFileReader!
    
    override func setUp() {
        mockFileManager = MockFileManager()
        reader = LocalFileReader(fileManager: mockFileManager)
    }
    
    func testLocalFileReaderHappyPath() throws {
        mockFileManager.mockContent = "This is test"
        try XCTAssertEqual(reader.read("TestingReaderFile.txt"), "This is test")
    }
    
    func testLocalFileReaderFileNotFoundFail() throws {
        mockFileManager.shouldReturnNil = true
        try XCTAssertThrowsError(reader.read("TestingReaderFile.txt"))
    }
}

