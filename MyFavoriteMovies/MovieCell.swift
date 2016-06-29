//
//  MovieCell.swift
//  MyFavoriteMovies
//
//  Created by Vinodh Srinivasan on 6/25/16.
//  Copyright © 2016 oneMore. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieReason: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(movie: Movie){
        movieTitle.text = movie.title
        movieReason.text = movie.reason
        movieImage.image = movie.getMovieImage()
        
        movieImage.layer.cornerRadius = movieImage.frame.width/2
        movieImage.clipsToBounds = true
    }
    
    

}
