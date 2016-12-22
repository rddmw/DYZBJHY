//
//  PageTitleView.swift
//  DYZBJHY
//
//  Created by hugh.jia on 2016/12/22.
//  Copyright © 2016年 Mac. All rights reserved.
//

import UIKit

class PageTitleView: UIView {

    private var titles:[String]
    
    fileprivate lazy var scrollView : UIScrollView = {
        
        let scrView = UIScrollView()
        
        scrView.showsVerticalScrollIndicator = false
        scrView.scrollsToTop = false
        scrView.bounces = false
        
        return scrView
    }()

    init(frame: CGRect , titles:[String]) {
        self.titles = titles
        
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension PageTitleView {
    fileprivate func setupUI() {
        //添加scrollView
    }
}
