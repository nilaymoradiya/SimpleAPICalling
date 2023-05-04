//
//  AppThemeTextField.swift
//  XcelTechTask
//
//  Created by Nilay M on 03/05/23.
//

import UIKit

class AppThemeTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        font = UIFont.boldSystemFont(ofSize: 15)
        setBorder(cornerRadius: 24, borderWidth: 0.5, borderColor: UIColor.gray)
        addLeftViewWithImageName()
    }

}
