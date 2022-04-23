//
//  ViewController.swift
//  UIKitPreview
//
//  Created by Novianto Hermawan on 15/04/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    let checkBox = CircleCheckBox(frame: CGRect(x: 70, y: 200, width: 70, height:70))
    let checkBoxButton = CheckBoxButton(frame: CGRect(x: 70, y: 300, width: 70, height: 70))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let label = UILabel(frame: CGRect(x: 150, y: 200, width: 200, height: 70))
        label.text = "agree"
        label.textColor = .green
        view.addSubview(label)
        view.addSubview(checkBox)
        let gesture = UITapGestureRecognizer(target: self, action: #selector(didTapChecBox))
        checkBox.addGestureRecognizer(gesture)

        // check box button
        view.addSubview(checkBoxButton)
        let usek = UITapGestureRecognizer(target: self, action: #selector(diusek))
        checkBoxButton.addGestureRecognizer(usek)
    }

    @objc func didTapChecBox() {
        checkBox.toggle()
    }

    @objc func diusek() {
        checkBoxButton.toggle()
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
