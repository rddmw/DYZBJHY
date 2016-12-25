//
//  PageTitleView.swift
//  DYZBJHY
//
//  Created by hugh.jia on 2016/12/22.
//  Copyright © 2016年 Mac. All rights reserved.
//

import UIKit

fileprivate let kScrollLineH : CGFloat = 2

class PageTitleView: UIView {

    fileprivate var titles:[String]
    
    fileprivate lazy var titlesLabels :[UILabel] = [UILabel]()
    
    fileprivate lazy var scrollView : UIScrollView = {
        
        let scrView = UIScrollView()
        
        scrView.showsVerticalScrollIndicator = false
        scrView.scrollsToTop = false
        scrView.bounces = false
        
        return scrView
    }()
    
    fileprivate lazy var scrollLine :UIView = {
    
        let scrollLine = UIView()
        scrollLine.backgroundColor = UIColor.orange
        return scrollLine
    
    
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
        addSubview(scrollView)
        
        scrollView.frame = bounds
        
        setupTitleLabels()
        
        //设置底线 和底部滑块
        setupScrollViewBottomLine()
        
    }
    
    fileprivate func setupTitleLabels() {
        
        let labelW :CGFloat =  frame.width / CGFloat(titles.count)
        let labelH :CGFloat =  frame.height - kScrollLineH
        let labelY :CGFloat = 0
        
        for (index,title) in titles.enumerated(){
            
            let label = UILabel()
            
            label.text = title
            
            label.tag = index
            label.font = UIFont.systemFont(ofSize: 16)
            label.textColor = UIColor.darkGray
            label.textAlignment = .center
            
            let labelX :CGFloat = labelW * CGFloat(index)
            
            label.frame = CGRect(x: labelX, y: labelY, width: labelW, height: labelH)
            
            scrollView.addSubview(label)

            titlesLabels.append(label)
        }
    }
    
    fileprivate func setupScrollViewBottomLine () {
        
        let bottomLine = UIView()
        
        bottomLine.frame = CGRect(x: 0, y: self.frame.height - 0.5, width: self.frame.width, height: 0.5)
        
        bottomLine.backgroundColor = UIColor.lightGray
        
        addSubview(bottomLine)
        
        scrollView.addSubview(scrollLine)
        
        guard let firstLabels =  titlesLabels.first
        else{
            return
        }
        firstLabels.textColor = UIColor.orange
        
        scrollLine.frame = CGRect(x: firstLabels.frame.origin.x, y: frame.height - kScrollLineH, width: firstLabels.frame.width, height: kScrollLineH)
    }
    

}
