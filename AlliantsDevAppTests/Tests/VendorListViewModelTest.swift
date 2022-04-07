//
//  VendorListViewModelTest.swift
//  AlliantsDevAppTests
//
//  Created by Sorin Miroiu on 08.04.2022.
//

import XCTest
import Combine
@testable import AlliantsDevApp

final class VendorListViewModelTest: XCTestCase {

    private var viewModel: VendorListViewModel?
    private var cancellables = Set<AnyCancellable>()

    func testFetchIsSuccessful() {
        let mockService = MockService(result: .success([Vendor.mockVendor]))
        viewModel = VendorListViewModel(webservice: mockService, with: nil)

        guard let viewModel = viewModel else {
            XCTFail("viewModel should not be nil")
            return
        }

        viewModel.fetchVendors()

        let exp = expectationFrom(publisher: viewModel.$vendors,
                                  cancellables: &cancellables) { (vendors: [Vendor]) in
            XCTAssertFalse(vendors.isEmpty)
        }

        wait(for: [exp], timeout: 0.5)
    }
}
