//
//  ViewInitiable.swift
//  AlliantsDevApp
//
//  Created by Sorin Miroiu on 07.04.2022.
//

import Foundation
import SwiftUI

protocol ViewInitiable {
    associatedtype ViewModel: ObservableObject & ViewModelInitiable

    var viewModel: ViewModel { get }
}

// Use case

/*private struct TestView: View, ViewInitiable {

    typealias ViewModel = TestViewModel //your view model's class name

    @ObservedObject var viewModel: TestViewModel //mark the viewModel property with the @ObservedObject wrapper

    //Do not initialise a property wrapper with the wrapped value; it is not recommended
    /*let viewModel: ObservedObject<TestViewModel>
    required init(with viewModel: TestViewModel) {
        self.viewModel = ObservedObject(wrappedValue: viewModel)
    }*/

    var body: some View {
        //content view here
    }

}*/
