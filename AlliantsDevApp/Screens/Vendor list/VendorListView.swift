//
//  VendorListView.swift
//  AlliantsDevApp
//
//  Created by Sorin Miroiu on 07.04.2022.
//

import SwiftUI

struct VendorListView: View, ViewInitiable {

    @ObservedObject private(set) var viewModel: VendorListViewModel

    typealias ViewModel = VendorListViewModel

    var body: some View {
        NavigationView {
            content
                .navigationTitle("Vendors list")
        }
        .onAppear {
            viewModel.fetchVendors()
        }
    }

    @ViewBuilder
    private var content: some View {
        if viewModel.isLoading {
            Text("Loading...")
        } else {
            List(viewModel.vendors) { vendor in
                NavigationLink(destination: VendorDetailView(viewModel: .init(with: vendor))) {
                    VendorView(vendor: vendor)
                }
            }
        }
    }
}

struct VendorListView_Previews: PreviewProvider {
    static var previews: some View {
        VendorListView(viewModel: .init())
    }
}
