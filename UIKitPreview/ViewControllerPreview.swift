//
//  ViewControllerPreview.swift
//  UIKitPreview
//
//  Created by Novianto Hermawan on 15/04/22.
//

import UIKit
import SwiftUI

//Convert VC to Swift UI
struct ViewControllerPreview: UIViewControllerRepresentable {
    let viewControllerBuilder: () -> UIViewController
    
    init(_ viewControllerBuilder: @escaping () -> UIViewController) {
        self.viewControllerBuilder = viewControllerBuilder
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        return viewControllerBuilder()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
