//
//  Swift_Protocol_Oriented_ProgrammingUITestsLaunchTests.swift
//  Swift-Protocol-Oriented-ProgrammingUITests
//
//  Created by Andrii Vitvitskyi on 11/04/2025.
//

import XCTest

final class Swift_Protocol_Oriented_ProgrammingUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
