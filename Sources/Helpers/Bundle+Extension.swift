//
//  Bundle+Extension.swift
//  FlagPhoneNumber
//
//  Created by DeviOS on 07/12/2017.
//

import Foundation
private class BundleFinder {}

extension Bundle {
    static var current: Bundle {
        #if SWIFT_PACKAGE
        return .module
        #else
        return Bundle(for: BundleFinder.self)
        #endif
    }
}


public extension Bundle {

	@objc static var FlagIcons = FlagPhoneNumber()

	@objc static func FlagPhoneNumber() -> Bundle {
		return current
	}
}
