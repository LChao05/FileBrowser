//
//  PreviewTransitionViewController.swift
//  FileBrowser
//
//  Created by LChao on 16/02/2017.
//  Copyright © 2017 LChao. All rights reserved.
//

import UIKit
import QuickLook

/// Preview Transition View Controller was created because of a bug in QLPreviewController. It seems that QLPreviewController has issues being presented from a 3D touch peek-pop gesture and is produced an unbalanced presentation warning. By wrapping it in a container, we are solving this issue.
class PreviewTransitionViewController: UIViewController {
    
    
    
    let quickLookPreviewController = QLPreviewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addChild(quickLookPreviewController)
        view.addSubview(quickLookPreviewController.view)
        quickLookPreviewController.view.frame = view.bounds
        quickLookPreviewController.didMove(toParent: self)
    }

}
