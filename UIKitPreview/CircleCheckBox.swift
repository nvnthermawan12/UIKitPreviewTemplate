//
//  CircleCheckBox.swift
//  UIKitPreview
//
//  Created by Novianto Hermawan on 19/04/22.
//

import UIKit
import SwiftUI

class CircleCheckBox: UIView {
    private var isChecked = false
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.borderWidth = 0.5
        layer.borderColor = UIColor.secondaryLabel.cgColor
        layer.cornerRadius = frame.size.width / 2.0
        backgroundColor = .systemBackground
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func toggle(){
        self.isChecked = !isChecked
        if self.isChecked {
            backgroundColor = .systemBlue
       } else {
           backgroundColor = .systemBackground
       }
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        layer.borderColor = UIColor.secondaryLabel.cgColor
    }
    
}

struct ViewPreview_previews: PreviewProvider {
    static var previews: some View {
        ViewPreview{
          CircleCheckBox()
        }.previewDevice("iPhone 12")
    }
    
}

