//
//  HomeViewController.swift
//  DYZBJHY
//
//  Created by hugh.jia on 2016/12/21.
//  Copyright © 2016年 Mac. All rights reserved.
//

import UIKit

fileprivate let kTitleViewH : CGFloat = 40

class HomeViewController: UIViewController {

    
    
    fileprivate  lazy var pageTitleView : PageTitleView = {
        
        let titlesFrame = CGRect(x: 0, y: 64, width: kScreenWidth, height: kTitleViewH)
        let titles = ["推荐","游戏","娱乐","趣玩"]
        let titleView = PageTitleView(frame: titlesFrame, titles: titles)
//        titleView.backgroundColor = UIColor.orange
        return titleView
    }()
    
//    fileprivate lazy var pageContentView :PageContentView = {
//       
//        let contentFrame = CGRect(x: 0, y: 64 + kTitleViewH, width: kScreenWidth, height: kScreenHeight - 64 - kTitleViewH - 49)
////        let contentView = PageContentView(frame: contentFrame, childVcs: <#T##[UIViewController]#>, parentViewController: <#T##UIViewController#>)
//        
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        
        
    }
    
    

}


extension HomeViewController{
    fileprivate func setupUI() {
        
        automaticallyAdjustsScrollViewInsets = false
        
        
        setupNavUI()
        
        view.addSubview(pageTitleView)
    }
    
    private func setupNavUI() {
        
        let btn = UIButton()
        let btnImage = UIImage(named: "logo")
        btn.setImage(btnImage, for: .normal)
        btn.sizeToFit()
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)
        
//        let rightBtn = UIButton()
        let rightBtnSize = CGSize(width: 40, height: 40)
//        let rightBtnOrigin = CGPoint(x: 0, y: 0)
//        let rightBtnImg = UIImage(named: "")
//        let rightBtnHLimg = UIImage(named: "")
//        rightBtn.setImage(rightBtnImg, for: .normal)
//        rightBtn.setImage(rightBtnHLimg, for: .highlighted)
//        rightBtn.frame = CGRect(origin: rightBtnOrigin, size: rightBtnSize)
        
//        let historyRightBtn = UIBarButtonItem.createItem(imgName: "image_my_history", hightImgName: "image_my_history_click", size: rightBtnSize)
//        
//        let searchRightBtn = UIBarButtonItem.createItem(imgName: "btn_search", hightImgName: "btn_search_click", size: rightBtnSize)
//        
//        let qrcodeRightBtn = UIBarButtonItem.createItem(imgName: "Image_scan", hightImgName: "Image_scan_click", size: rightBtnSize)
//        
//        navigationItem.rightBarButtonItems =  [historyRightBtn,searchRightBtn,qrcodeRightBtn]
        let historyRightBtn = UIBarButtonItem(imgName: "image_my_history", hightImgName: "Image_my_history_click", size: rightBtnSize)
        let searchRightBtn = UIBarButtonItem(imgName: "btn_search", hightImgName: "btn_search_clicked", size: rightBtnSize)
        let qrcodeRightBtn = UIBarButtonItem(imgName: "Image_scan", hightImgName: "Image_scan_click", size: rightBtnSize)
        navigationItem.rightBarButtonItems =  [historyRightBtn,searchRightBtn,qrcodeRightBtn]
    }
}
