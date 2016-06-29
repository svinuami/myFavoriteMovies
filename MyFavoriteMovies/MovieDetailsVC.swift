//
//  MovieDetailsVC.swift
//  MyFavoriteMovies
//
//  Created by Vinodh Srinivasan on 6/26/16.
//  Copyright © 2016 oneMore. All rights reserved.
//

import UIKit
import WebKit

class MovieDetailsVC: UIViewController {

    @IBOutlet weak var container: UIView!
    
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieReason: UILabel!
    
    var webView: WKWebView!
    
    var selectedMovie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView()
        container.addSubview(webView)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = frame
        
        if selectedMovie != nil {
            detailImage.image = selectedMovie.getMovieImage()
            movieTitle.text = selectedMovie.title
            movieReason.text = selectedMovie.reason
            
            let urlString = selectedMovie.url!
            let url = NSURL(string: urlString)!
            let request = NSURLRequest(URL: url)
            webView.loadRequest(request)            
        }
    }
    

}
