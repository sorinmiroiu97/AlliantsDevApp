//
//  ApiHelper.swift
//  AlliantsDevApp
//
//  Created by Sorin Miroiu on 07.04.2022.
//

import Foundation

struct ApiHelper {
 
    enum ApiEnvironment {
        case dev
        case live

        static var environment: ApiEnvironment {
            #if DEBUG
            return .dev
            #else
            return .live
            #endif
        }
    }

    static var apiUrl: String {
        switch ApiEnvironment.environment {
        case .dev, .live:
            //since we've only got access to 1 url, for this demo it's gonna be
            //the same one for both sandbox and production endpoints
            return "https://nobu.cms.alliants.app"
        }
    }

    static var headers: [String: String] {
        return [
            "Accept": "*/*"
        ]
    }

    static func setHeaders(to urlRequest: inout URLRequest) {
        headers.forEach { args in
            let (key, value) = args
            urlRequest.setValue(value, forHTTPHeaderField: key)
        }
    }
}
