//
//  VendorDetailViewModel.swift
//  AlliantsDevApp
//
//  Created by Sorin Miroiu on 08.04.2022.
//

import Combine

final class VendorDetailViewModel: ObservableObject, ViewModelInitiable {

    typealias ModelObject = Vendor

    private(set) var cancellables = Set<AnyCancellable>()

    let webservice: NetworkInitiable
    let vendor: Vendor

    required init(webservice: NetworkInitiable = NetworkService.shared,
                  with model: Vendor) {
        self.webservice = webservice
        self.vendor = model
    }
}
