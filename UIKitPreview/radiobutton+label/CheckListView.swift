//
//  CheckListView.swift
//  UIKitPreview
//
//  Created by Novianto Hermawan on 24/04/22.
//

import UIKit

class CheckListView: UIView {
    var height: CGFloat = 0
    let boxMargin: CGFloat = 10
    var buttons: [RadioButton] = []
    var boxNames: [String] = []
    var buttonColor = UIColor()
    
    
    func setcolor(_ theColor: UIColor) {
        buttonColor = theColor
        for aButton in buttons {
            aButton.setColor(theColor)
        }
    }
    
    func setShape(_ shape: String) {
        for aButton in buttons {
            aButton.setShape(shape)
        }
    }
    
    func checkBoxSetup(_ checkboxNames: [String], font: UIFont, color: UIColor, isExclusive: Bool) {
        self.backgroundColor = UIColor(white: 1, alpha: 0.65)
        self.layer.cornerRadius = 6
        buttons = []
        boxNames = checkboxNames
        buttonColor = color
        var yIndex: CGFloat = boxMargin
        for aName in checkboxNames {
            let curCheckBox = RadioButton()
            curCheckBox.buttonColor = buttonColor
            curCheckBox.buttonFont = font
            self.addSubview(curCheckBox)
            curCheckBox.setName(aName)
            curCheckBox.frame.origin = CGPoint(x: boxMargin, y: yIndex)
            yIndex += curCheckBox.frame.height + 2 * boxMargin
            buttons.append(curCheckBox)
            if(isExclusive == true) {
                curCheckBox.removeTarget(curCheckBox, action: #selector(RadioButton.toggle(_:)), for: .touchUpInside)
                curCheckBox.addTarget(self, action: #selector(CheckListView.exclusiveToggle(_:)), for: .touchUpInside)
            }
        }
        height = yIndex
    }
    
    @objc func exclusiveToggle(_ sender: AnyObject) {
        for aButton in buttons {
            aButton.turnOff()
        }
        let something = sender as! RadioButton
        something.turnOn()
    }
    
    func getOutput() -> [String] {
        var i: Int = 0
        var ouputArray: [String] = []
        for aName in boxNames {
            if buttons[i].isOn == true {
                ouputArray.append(aName)
            }
            i += 1
        }
        return ouputArray
    }
}
