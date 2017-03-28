//
//  UIBarButtonItems.swift
//  DYZBJHY
//
//  Created by hugh.jia on 2016/12/21.
//  Copyright © 2016年 Mac. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
//    class func createItem(imgName : String, hightImgName: String, size : CGSize) -> UIBarButtonItem{
//        let btn = UIButton()
//        
//        let btnImg = UIImage(named: imgName)
//        btn.setImage(btnImg, for: .normal)
//        let btnHLimg = UIImage(named: hightImgName)
//        btn.setImage(btnHLimg, for: .highlighted)
//        let origin = CGPoint(x: 0, y: 0)
//        btn.frame = CGRect(origin: origin, size: size)
//        
//    
//        return UIBarButtonItem(customView: btn)
//    }
    
    convenience init(imgName : String, hightImgName: String="", size : CGSize) {
        let btn = UIButton()

        let btnImg = UIImage(named: imgName)
        btn.setImage(btnImg, for: .normal)
        if hightImgName != "" {
            let btnHLimg = UIImage(named: hightImgName)
            btn.setImage(btnHLimg, for: .highlighted)
        }
        
        let origin = CGPoint(x: 0, y: 0)
        btn.frame = CGRect(origin: origin, size: size)
        
        self.init(customView: btn)
    }
}
