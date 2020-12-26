//
//  ButtonDismissAsRootLink.swift
//  
//
//  Created by Alex Nagy on 26.12.2020.
//

import SwiftUI

@available(iOS 13.0, *)
public struct ButtonDismissToRootLink<Content: View>: View {
    public let content: Content

    @Environment(\.pushingInRoot) var pushingInRoot

    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    public var body: some View {
        Button(action: {
            pushingInRoot?.wrappedValue.toggle()
        }, label: {
            content
        })
    }
}
