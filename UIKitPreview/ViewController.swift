//
//  ViewController.swift
//  UIKitPreview
//
//  Created by Novianto Hermawan on 15/04/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let label = UILabel(frame: CGRect(x: 150, y: 200, width: 200, height: 70))
        label.text = "Hello World!"
        label.textColor = .black
        view.addSubview(label)
    }
}

struct ViewController_previews: PreviewProvider {
    static var previews: some View {
        ViewControllerPreview {
            ViewController()
        }
        .previewDevice("iPhone 12")
    }
}
