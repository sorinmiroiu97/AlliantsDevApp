//
//  VendorListViewModel.swift
//  AlliantsDevApp
//
//  Created by Sorin Miroiu on 07.04.2022.
//

import Foundation
import Combine

final class VendorListViewModel: ObservableObject, ViewModelInitiable {

    typealias ModelObject = Any?

    private(set) var cancellables = Set<AnyCancellable>()

    @Published private(set) var vendors: [Vendor] = []
    @Published private(set) var error: ApiError?
    @Published private(set) var isLoading: Bool = false

    let webservice: NetworkInitiable

    required init(webservice: NetworkInitiable = NetworkService.shared,
                  with model: Any? = nil) {
        self.webservice = webservice
    }

    func fetchVendors() {
        guard !isLoading else {
            return
        }
        isLoading = true

        VendorEndpoint.vendors.request(with: webservice)
            .sink { [weak self] (completion: Subscribers.Completion<ApiError>) in
                guard let self = self else {
                    return
                }
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    self.error = error
                }
                self.isLoading = false
            } receiveValue: { [weak self] (vendors: [Vendor]) in
                guard let self = self else {
                    return
                }
                self.vendors = vendors
                self.isLoading = false
            }.store(in: &cancellables)
    }
}
