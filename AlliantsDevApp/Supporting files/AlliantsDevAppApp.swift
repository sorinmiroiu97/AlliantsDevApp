//
//  AlliantsDevAppApp.swift
//  AlliantsDevApp
//
//  Created by Sorin Miroiu on 07.04.2022.
//

import SwiftUI

@main
struct AlliantsDevAppApp: App {
    var body: some Scene {
        WindowGroup {
            VendorListView(viewModel: VendorListViewModel(webservice: NetworkService.shared, with: nil))
        }
    }
}
