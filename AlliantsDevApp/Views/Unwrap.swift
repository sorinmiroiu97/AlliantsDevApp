//
//  Unwrap.swift
//  AlliantsDevApp
//
//  Created by Sorin Miroiu on 07.04.2022.
//

import SwiftUI

struct Unwrap<Value, Content: View>: View {
    private let value: Value?
    private let contentProvider: (Value) -> Content

    init(_ value: Value?,
         @ViewBuilder content: @escaping (Value) -> Content) {
        self.value = value
        self.contentProvider = content
    }

    var body: some View {
        value.map(contentProvider)
    }
}

struct Unwrap_Previews: PreviewProvider {
    static let nilString: String? = nil
    static let nonNilString: String? = "test"

    static var previews: some View {
        Group {
            Unwrap(nilString) { string in
                Text(string) //THIS WON'T GET RENDERED
            }
            Unwrap(nonNilString) { string in
                Text(string) //THIS WILL GET RENDERED
            }
        }
    }
}
