//
//  ButtonAsRootNavigationLink.swift
//  
//
//  Created by Alex Nagy on 26.12.2020.
//

import SwiftUI

@available(iOS 13.0, *)
public struct ButtonAsRootNavigationLink<Destination: View, Content: View>: View {
    public let destination: Destination
    public let content: () -> Content

    @Binding public var isActive: Bool

    public var body: some View {
        Button(action: {
            isActive = true
        }, label: { content() })
            .background(
                NavigationLink(
                    destination: destination,
                    isActive: $isActive,
                    label: { EmptyView() }
                ).isDetailLink(false).hidden()
            )
    }
}
