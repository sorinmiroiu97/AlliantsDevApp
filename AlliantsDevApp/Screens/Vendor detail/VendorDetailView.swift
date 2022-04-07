//
//  VendorDetailView.swift
//  AlliantsDevApp
//
//  Created by Sorin Miroiu on 08.04.2022.
//

import SwiftUI
import Kingfisher

struct VendorDetailView: View, ViewInitiable {

    typealias ViewModel = VendorDetailViewModel

    let viewModel: VendorDetailViewModel

    var body: some View {
        content
    }

    private var content: some View {
        ScrollView {
            VStack {
                Unwrap(viewModel.vendor.displayName) { displayName in
                    Text(displayName)
                        .lineLimit(nil)
                        .multilineTextAlignment(.center)
                }
                Unwrap(viewModel.vendor.heroImage?.url) { url in
                    KFImage(URL(string: url))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 300, alignment: .center)
                }
                Unwrap(viewModel.vendor.vendorDescription) { description in
                    Text(description)
                        .fixedSize(horizontal: false, vertical: true)
                        .lineLimit(nil)
                }
            }
            .padding()
        }
    }
}

struct VendorDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VendorDetailView(viewModel: .init(with: Vendor.mockVendor))
    }
}
