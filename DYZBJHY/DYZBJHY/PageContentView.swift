//
//  PageContentView.swift
//  DYZBJHY
//
//  Created by hugh.jia on 2016/12/25.
//  Copyright © 2016年 Mac. All rights reserved.
//

import UIKit

class PageContentView: UIView {


    fileprivate var childVcs : [UIViewController]
    
    fileprivate var parentVc : UIViewController
    
    
    
    
    init(frame: CGRect , childVcs : [UIViewController],parentViewController :UIViewController) {
        self.childVcs = childVcs
        
        self.parentVc = parentViewController
        
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
