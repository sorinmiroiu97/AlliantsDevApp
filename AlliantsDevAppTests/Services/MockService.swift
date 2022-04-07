//
//  MockService.swift
//  AlliantsDevAppTests
//
//  Created by Sorin Miroiu on 07.04.2022.
//

import Foundation
import Combine

@testable import AlliantsDevApp

final class MockService<Model: Codable>: NetworkInitiable {

    let result: Result<Model?, ApiError>

    required init(result: Result<Model?, ApiError>) {
        self.result = result
    }

    func requestPublisher<T: Codable>(with request: URLRequest) -> AnyPublisher<T, ApiError> {
        Future { [weak self] promise in
            switch self?.result {
            case .failure(let error):
                promise(.failure(error))
            case .success(let model):
                if let model = model as? T {
                    promise(.success(model))
                } else {
                    fallthrough
                }
            default:
                promise(.failure(.unknown))
            }
        }.eraseToAnyPublisher()
    }

}
