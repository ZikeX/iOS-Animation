//
//  ViewController.swift
//  AnimationBegin
//
//  Created by jones on 5/5/16.
//  Copyright © 2016 jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var loginButton:UIButton?
    var index:Int = 1;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton = UIButton(frame: CGRect(x: 20, y: 230, width: self.view.frame.width-20*2,height: 50))
        loginButton!.backgroundColor = UIColor(red: 50/255.0, green: 185/255.0, blue: 170/255.0, alpha: 1.0)
        loginButton!.setTitle("登陆", for: UIControlState())
        self.view.addSubview(loginButton!)
    }


    override func viewWillAppear(_ animated: Bool) {
         //      几何形状:拉伸 压缩效果
        UIView.beginAnimations(nil, context: nil)//动画开始
        UIView.setAnimationDuration(1)//动画周期设置
        loginButton!.bounds = CGRect(x:0, y:0, width:loginButton!.frame.size.width*0.7, height:loginButton!.frame.size.height*1.2)//动画形状
        UIView.commitAnimations()//动画提交
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

