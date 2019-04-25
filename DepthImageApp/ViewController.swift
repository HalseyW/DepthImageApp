//
//  ViewController.swift
//  DepthImageApp
//
//  Created by Wushhhhhh on 2019/4/25.
//  Copyright © 2019 wushhhhhh. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    var iv: UIImageView?
    var btnSelectPhoto: UIButton?
    let screenWidth = UIScreen.main.bounds.width
    
    override func loadView() {
        super.loadView()
        initView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

extension ViewController {
    func initView() {
        iv = UIImageView.init()
        iv?.backgroundColor = .lightGray
        self.view.addSubview(iv!)
        iv?.snp.makeConstraints({ (make) in
            make.center.width.equalToSuperview()
            make.height.equalTo(screenWidth)
        })
        
        btnSelectPhoto = UIButton.init()
        btnSelectPhoto?.setTitle("Select", for: .normal)
        btnSelectPhoto?.backgroundColor = .darkGray
        self.view.addSubview(btnSelectPhoto!)
        btnSelectPhoto?.snp.makeConstraints({ (make) in
            make.width.equalTo(200)
            make.height.equalTo(50)
            make.centerX.equalToSuperview()
            make.top.equalTo(iv!.snp.bottom).offset(30)
        })
    }
}
