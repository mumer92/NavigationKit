//
//  View+.swift
//  
//
//  Created by Alex Nagy on 14.12.2020.
//

import SwiftUI

@available(iOS 13.0, *)
extension View {
    
    public func pushes<Destination: View>(_ destination: Destination) -> some View {
        modifier(Push(destination: {
            destination
        }))
    }
    
    public func pushes<Destination: View>(_ destination: Destination, after action: @escaping (Navigation) -> ()) -> some View {
        modifier(ActionPush(destination: {
            destination
        }, action: action))
    }
    
    public func pushesAsIs<Destination: View>(_ destination: Destination) -> some View {
        modifier(AsIsPush(destination: {
            destination
        }))
    }
    
    public func pushesAsRoot<Destination: View>(_ destination: Destination, isActive: Binding<Bool>) -> some View {
        modifier(AsRootPush(destination: {
            destination
        }, isActive: isActive))
    }
    
    public func dismisses() -> some View {
        modifier(Dismiss())
    }
    
    public func dismisses(after action: @escaping (Navigation) -> ()) -> some View {
        modifier(ActionDismiss(action: action))
    }
    
    public func dismissesAsIs() -> some View {
        modifier(AsIsDismiss())
    }
    
    public func dismissesToRoot() -> some View {
        modifier(ToRootDismiss())
    }
    
    public func dismissesNavigationViewSheet() -> some View {
        return modifier(DismissNavigationViewSheet())
    }
    
    public func dismissesNavigationViewSheet(after action: @escaping (Navigation) -> ()) -> some View {
        modifier(ActionDismissNavigationViewSheet(action: action))
    }
    
    public func dismissesAsIsNavigationViewSheet() -> some View {
        modifier(AsIsDismissNavigationViewSheet())
    }
    
    public func presents<Destination: View>(_ destination: Destination, allowsSwipeToDismiss: Bool = true) -> some View {
        modifier(Present(destination: {
            destination.allowsSwipeToDismiss(allowsSwipeToDismiss)
        }))
    }
    
    public func presents<Destination: View>(_ destination: Destination, allowsSwipeToDismiss: Bool = true, onDismiss: (() -> Void)?) -> some View {
        modifier(PresentOnDismiss(destination: {
            destination.allowsSwipeToDismiss(allowsSwipeToDismiss)
        }, onDismiss: onDismiss))
    }
    
    public func presents<Destination: View>(_ destination: Destination, after action: @escaping (Navigation) -> (), allowsSwipeToDismiss: Bool = true) -> some View {
        modifier(ActionPresent(destination: {
            destination.allowsSwipeToDismiss(allowsSwipeToDismiss)
        }, action: action))
    }
    
    public func presents<Destination: View>(_ destination: Destination, onDismiss: (() -> Void)?, after action: @escaping (Navigation) -> (), allowsSwipeToDismiss: Bool = true) -> some View {
        modifier(ActionPresentOnDismiss(destination: {
            destination.allowsSwipeToDismiss(allowsSwipeToDismiss)
        }, onDismiss: onDismiss, action: action))
    }
    
    public func presentsAsIs<Destination: View>(_ destination: Destination, allowsSwipeToDismiss: Bool = true) -> some View {
        modifier(AsIsPresent(destination: {
            destination.allowsSwipeToDismiss(allowsSwipeToDismiss)
        }))
    }
    
    public func presentsAsIs<Destination: View>(_ destination: Destination, allowsSwipeToDismiss: Bool = true, onDismiss: (() -> Void)?) -> some View {
        modifier(AsIsPresentOnDismiss(destination: {
            destination.allowsSwipeToDismiss(allowsSwipeToDismiss)
        }, onDismiss: onDismiss))
    }
    
    public func presentsNavigationView<Destination: View>(_ destination: Destination, allowsSwipeToDismiss: Bool = true) -> some View {
        modifier(PresentNavigationView(destination: {
            NavigationView {
                destination.allowsSwipeToDismiss(allowsSwipeToDismiss)
            }
        }))
    }
    
    public func presentsNavigationView<Destination: View>(_ destination: Destination, allowsSwipeToDismiss: Bool = true, onDismiss: (() -> Void)?) -> some View {
        modifier(PresentNavigationViewOnDismiss(destination: {
            NavigationView {
                destination.allowsSwipeToDismiss(allowsSwipeToDismiss)
            }
        }, onDismiss: onDismiss))
    }
    
    public func presentsNavigationView<Destination: View>(_ destination: Destination, after action: @escaping (Navigation) -> (), allowsSwipeToDismiss: Bool = true) -> some View {
        modifier(ActionPresentNavigationView(destination: {
            NavigationView {
                destination.allowsSwipeToDismiss(allowsSwipeToDismiss)
            }
        }, action: action))
    }
    
    public func presentsNavigationView<Destination: View>(_ destination: Destination, onDismiss: (() -> Void)?, after action: @escaping (Navigation) -> (), allowsSwipeToDismiss: Bool = true) -> some View {
        modifier(ActionPresentNavigationViewOnDismiss(destination: {
            NavigationView {
                destination.allowsSwipeToDismiss(allowsSwipeToDismiss)
            }
        }, onDismiss: onDismiss, action: action))
    }
    
    public func presentsAsIsNavigationView<Destination: View>(_ destination: Destination, allowsSwipeToDismiss: Bool = true) -> some View {
        modifier(AsIsPresentNavigationView(destination: {
            NavigationView {
                destination.allowsSwipeToDismiss(allowsSwipeToDismiss)
            }
        }))
    }
    
    public func presentsAsIsNavigationView<Destination: View>(_ destination: Destination, allowsSwipeToDismiss: Bool = true, onDismiss: (() -> Void)?) -> some View {
        modifier(AsIsPresentNavigationViewOnDismiss(destination: {
            NavigationView {
                destination.allowsSwipeToDismiss(allowsSwipeToDismiss)
            }
        }, onDismiss: onDismiss))
    }
    
}
