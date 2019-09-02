//
//  ViewController.swift
//  test
//
//  Created by LSJ on 2019/9/2.
//  Copyright © 2019 YYeTs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let homeDir:String = NSHomeDirectory()
        print("沙盒地址---\(homeDir)")
        let fileBrowser = FileBrowser(initialPath: URL(fileURLWithPath: homeDir))
//        let fileBrowser = FileBrowser()
        present(fileBrowser, animated: true, completion: nil)
    }


}

