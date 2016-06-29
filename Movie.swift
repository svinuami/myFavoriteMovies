//
//  Movie.swift
//  MyFavoriteMovies
//
//  Created by Vinodh Srinivasan on 6/25/16.
//  Copyright © 2016 oneMore. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class Movie: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    
    func setMovieImage(img: UIImage) {
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }
    
    func getMovieImage() -> UIImage {
        let img = UIImage(data: self.image!)
        return img!
    }

}
