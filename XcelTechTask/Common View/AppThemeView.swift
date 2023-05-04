//
//  AppThemeView.swift
//  XcelTechTask
//
//  Created by Nilay M on 03/05/23.
//

import UIKit

class AppThemeView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        setCornerRadius(radius: 16.0)
        addContainerShadow()
        
        for subview in subviews {
            if subview.isKind(of: UILabel.self) {
                let label = subview as! UILabel
                label.textColor = UIColor.gray
            }
        }
    }

}
