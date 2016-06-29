//
//  DetailsVC.swift
//  MyFavoriteMovies
//
//  Created by Vinodh Srinivasan on 6/27/16.
//  Copyright © 2016 oneMore. All rights reserved.
//

import UIKit
import WebKit

class DetailsVC: UIViewController {
    
    
    @IBOutlet weak var containerView: UIView!
    
    var wkWebView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        WKWebView = WKWebView()
        containerView.addSubview(WKWebView)
    }
    
    func viewDidAppear(animated: Bool) {
        
        let frame = CGRectMake(0, 0, <#T##width: CGFloat##CGFloat#>, <#T##height: CGFloat##CGFloat#>)
    }
}
