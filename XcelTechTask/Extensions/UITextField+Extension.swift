//
//  UITextField+Extension.swift
//  XcelTechTask
//
//  Created by Nilay M on 03/05/23.
//

import UIKit

extension UITextField {
    
    func addLeftViewWithImageName(_ imageName: String? = nil) {
        
        let isImage : Bool = imageName?.count ?? 0 > 0 ? true : false
        let view : UIView = UIView.init(frame: CGRect(x: 0, y: 0, width: 16, height: self.frame.size.height))
        view.backgroundColor = UIColor.clear
        if isImage {
            
            view.frame = CGRect(x: 0, y: 0, width: 35, height: self.frame.size.height)
            let imageView = UIImageView.init(frame: CGRect(x: 10, y: (self.frame.size.height - 15) / 2, width: 15, height: 15))
            imageView.contentMode = .scaleAspectFit
            imageView.image = UIImage.init(named: imageName!)?.withRenderingMode(.alwaysTemplate)
            view.addSubview(imageView)
        }
        self.leftView = view
        self.leftViewMode = .always
    }
}

