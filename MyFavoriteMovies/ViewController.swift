//
//  ViewController.swift
//  MyFavoriteMovies
//
//  Created by Vinodh Srinivasan on 6/23/16.
//  Copyright © 2016 oneMore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var guestButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 10
        guestButton.layer.cornerRadius = 10
        
    }

    

}

