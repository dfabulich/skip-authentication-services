// Copyright 2023–2026 Skip
// SPDX-License-Identifier: MPL-2.0

import XCTest
import OSLog
import Foundation
#if canImport(AuthenticationServices)
import AuthenticationServices
#else
@testable import SkipAuthenticationServices
#endif

let logger: Logger = Logger(subsystem: "SkipAuthenticationServices", category: "Tests")

@available(macOS 13, *)
final class SkipAuthenticationServicesTests: XCTestCase {
    func testSkipAuthenticationServices() throws {
        logger.log("running testSkipAuthenticationServices")
    }
}

