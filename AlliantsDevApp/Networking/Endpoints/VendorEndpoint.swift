//
//  VendorEndpoint.swift
//  AlliantsDevApp
//
//  Created by Sorin Miroiu on 07.04.2022.
//

import Foundation

enum VendorEndpoint: Endpoint {

    case vendors

    var route: String {
        switch self {
        case .vendors:
            return "/vendors"
        }
    }

    var params: JSONDictionary {
        switch self {
        case .vendors:
            return [:]
        }
    }

    var httpMethod: HttpMethod {
        switch self {
        case .vendors:
            return .get
        }
    }
}
