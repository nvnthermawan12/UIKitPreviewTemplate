//
//  RadioButton.swift
//  UIKitPreview
//
//  Created by Novianto Hermawan on 24/04/22.
//

import UIKit

class RadioButton: UIButton{
    let nameLabel = UILabel()
    let checkBox = UIImageView()
    var checkedImage = UIImage(named: "CheckedCircle")
    var uncheckedImage = UIImage(named: "UncheckedCircle")
    var isOn = false
    var setupDone = false
    let fontSize: CGFloat = 18
    let smallMargin: CGFloat = 8
    var buttonColor = UIColor()
    var buttonFont = UIFont()
    
    
    
    func setName(_ boxName: String) {
        if setupDone == false {
            self.addSubview(nameLabel)
            self.addSubview(checkBox)
            self.addTarget(self, action: #selector(toggle(_:)), for: .touchUpInside)
            setupDone = true
        }
        
        nameLabel.text = boxName
        nameLabel.font = buttonFont
        nameLabel.numberOfLines = 1
        nameLabel.sizeToFit()
        
        checkBox.image = uncheckedImage
        checkBox.frame = CGRect(x: 0, y: 0, width: nameLabel.frame.height, height: nameLabel.frame.height)
        
        nameLabel.frame.origin = CGPoint(x: checkBox.frame.width + smallMargin, y: 0)
        self.frame.size = CGSize(width: checkBox.frame.width + smallMargin + nameLabel.frame.width, height: nameLabel.frame.height)
    }
    
    @objc func toggle(_ sender: AnyObject) {
        if isOn == true {
            turnOff()
        } else {
            turnOn()
        }
    }
    
    func turnOn() {
        isOn = true
        nameLabel.textColor = buttonColor
        
        nameLabel.sizeToFit()
        
        checkBox.image = checkedImage
        checkBox.image = checkBox.image!.withRenderingMode(.alwaysTemplate)
        checkBox.tintColor = buttonColor
    }
    
    func turnOff() {
        isOn = false
        nameLabel.textColor = UIColor.black
        
        nameLabel.sizeToFit()
        checkBox.image = uncheckedImage
        checkBox.tintColor = UIColor.black
    }
    
    func setColor(_ theColor: UIColor) {
        buttonColor = theColor
        if isOn {
            nameLabel.textColor = buttonColor
            checkBox.image = checkedImage
            checkBox.image = checkBox.image!.withRenderingMode(.alwaysTemplate)
            checkBox.tintColor = buttonColor
        }
    }
    
    //MARK: not working
    func setShape(_ shape: String) {
        if shape.lowercased() == "circle" || shape.lowercased() == "round" {
            checkedImage = UIImage(named: "CheckedCircle")
            uncheckedImage = UIImage(named: "UncheckedCircle")
        } else {
            checkedImage = UIImage(named: "CheckedBox")
            uncheckedImage = UIImage(named: "UncheckedBox")
        }
        
        if isOn {
            checkBox.image = checkedImage
            checkBox.image = checkBox.image!.withRenderingMode(.alwaysTemplate)
            checkBox.tintColor = buttonColor
        } else {
            checkBox.image = uncheckedImage
        }
    }
}
