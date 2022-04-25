//
//  ViewController.swift
//  UIKitPreview
//
//  Created by Novianto Hermawan on 15/04/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    let checkBox = CheckListView(frame: CGRect(x: 50, y: 200, width: 200, height: 200))
    let array = ["moment","apakah aku"]
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        checkBox.checkBoxSetup(array, font: UIFont.systemFont(ofSize: 40), color: .black, isExclusive: true)
        view.addSubview(checkBox)
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
