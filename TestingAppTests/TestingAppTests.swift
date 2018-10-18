//
//  TestingAppTests.swift
//  TestingAppTests
//
//  Created by David Cornelius on 18/10/18.
//  Copyright © 2018 David Cornelius. All rights reserved.
//

import XCTest

@testable import TestingApp

class TestingAppTests: XCTestCase {

    var vc : ViewController!
    
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        vc = ViewController()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testPenjumlahan() {
        vc.menjumlahkan(3, 4)
        
        XCTAssert(vc.hasilPenjumlahan != 9, "Fail test func menjumlahkan")
    }

    func testPengurangan() {
        vc.pengurangan(5, 4)
        
        XCTAssert(vc.hasilPengurangan != 1, "Fail test func Pengurangan")
    }
    
    func testJumlahItemAwal() {
        vc.viewDidLoad()
        
        XCTAssert(vc.items.count == 1, "Fail Test Item Awal")
        
    }
    
    
}
