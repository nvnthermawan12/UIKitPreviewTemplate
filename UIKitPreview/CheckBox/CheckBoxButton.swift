//
//  CheckBoxButton.swift
//  UIKitPreview
//
//  Created by Novianto Hermawan on 23/04/22.
//

import UIKit

class CheckBoxButton: UIView {
    var isChecked = false
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .systemBlue
        imageView.isHidden = false
        imageView.image = UIImage(systemName:"checkmark")
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init rusak")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = CGRect(x: 0, y: -10, width: frame.size.width, height: frame.size.width)
    }
    
    public func toggle() {
        self.isChecked = !isChecked
        imageView.isHidden = !isChecked
    }
}
