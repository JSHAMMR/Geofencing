//
//  GeofencingTests.swift
//  GeofencingTests
//
//  Created by Gamil Ali Qaid Shamar on 03/11/2019.
//  Copyright © 2019 com.xchanging.agencydaiichi. All rights reserved.
//

import XCTest
@testable import Geofencing
import CoreLocation
class GeofencingTests: XCTestCase {
    
    
    fileprivate var viewController:ViewController!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        viewController = ViewController()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testGesture() {
        XCTAssertNotNil(viewController.longGesture)
    }
    
    func testNotification() {
        
        XCTAssertTrue(viewController.notificationSetup())
    }
    
    func testWifiConnection () {
       // XCTAssertTrue(viewController!.hasWifi()) // pls use a real device to test this
    }

   
    func testLocationManager() {
        XCTAssertNotNil(viewController.locationManager)
    }
    
    
    func testLocationManagerServicesEnabled() {
        
        XCTAssertTrue(CLLocationManager.locationServicesEnabled())
    }
    
    func testLocationManagerAuthorizationStatusAlways() {
        
        XCTAssertEqual(CLLocationManager.authorizationStatus(), .authorizedAlways)
    }
    
//    func testLocationManagerAuthorizationStatusWhenInUse() { // in case of authorization when in use 
//        
//        XCTAssertEqual(CLLocationManager.authorizationStatus(), .authorizedWhenInUse)
//    }

   
}
