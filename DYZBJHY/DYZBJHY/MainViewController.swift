//
//  MainViewController.swift
//  DYZBJHY
//
//  Created by hugh.jia on 2016/12/20.
//  Copyright © 2016年 Mac. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addChildVCWithName(vcName: "Home")
        addChildVCWithName(vcName: "Live")
        addChildVCWithName(vcName: "Follow")
        addChildVCWithName(vcName: "Mine")
        
    }
    
    private func addChildVCWithName(vcName:String){
        let subsVc = UIStoryboard(name: vcName, bundle: nil).instantiateInitialViewController()!
        
        addChildViewController(subsVc)
    }

}
