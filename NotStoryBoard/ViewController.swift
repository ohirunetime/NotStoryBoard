//
//  ViewController.swift
//  NotStoryBoard
//
//  Created by 慎之助 on 2020/03/10.
//  Copyright © 2020 ohirune. All rights reserved.
//

import UIKit
 
class ViewController: UIViewController {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nextButton = UIButton(frame: CGRect(x: 0,y: 0,width: 100,height:100))
        nextButton.setTitle("Go!", for: .normal)
        nextButton.backgroundColor = UIColor.blue
        nextButton.addTarget(self, action: #selector(ViewController.goNext(_:)), for: .touchUpInside)
        view.addSubview(nextButton)
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func goNext(_ sender: UIButton) {// selectorで呼び出す場合Swift4からは「@objc」をつける。
        let nextvc = NextViewController()
        nextvc.view.backgroundColor = UIColor.blue
        self.present(nextvc, animated: true, completion: nil)
    }
 
 
}

