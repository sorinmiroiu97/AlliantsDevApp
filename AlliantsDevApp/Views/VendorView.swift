//
//  VendorView.swift
//  AlliantsDevApp
//
//  Created by Sorin Miroiu on 07.04.2022.
//

import SwiftUI
import Kingfisher

struct VendorView: View {

    let vendor: Vendor

    var body: some View {
        content
    }

    private var content: some View {
        VStack {
            Unwrap(vendor.heroImage?.url) { url in
                KFImage(URL(string: url))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200, alignment: .center)
            }
            Unwrap(vendor.displayName) { displayName in
                Text(displayName)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
            }
        }
    }

    private func makeAspectRatioIfAvailable() -> CGFloat? {
        guard let width = vendor.heroImage?.width,
              let height = vendor.heroImage?.height else {
                  return nil
              }
        return CGFloat(width / height)
    }
}
struct VendorView_Previews: PreviewProvider {
    static var previews: some View {
        VendorView(vendor: Vendor.mockVendor)
    }
}
