//
//  NetworkInitiable.swift
//  AlliantsDevApp
//
//  Created by Sorin Miroiu on 07.04.2022.
//

import Foundation
import Combine

protocol NetworkInitiable: AnyObject {
    func requestPublisher<T: Codable>(with request: URLRequest) -> AnyPublisher<T, ApiError>
}
