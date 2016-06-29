//
//  AddMovieVC.swift
//  MyFavoriteMovies
//
//  Created by Vinodh Srinivasan on 6/26/16.
//  Copyright © 2016 oneMore. All rights reserved.
//

import UIKit
import CoreData

class AddMovieVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var movieTitle: UITextField!
    @IBOutlet weak var movieReason: UITextField!
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieUrl: UITextField!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        movieImage.layer.cornerRadius = 4.0
        movieImage.clipsToBounds = true
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        movieImage.image = image
    }
    
    @IBAction func addImage(sender: AnyObject) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func addMovie(sender: AnyObject) {
        
        if let title = movieTitle.text where title != "" {
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Movie", inManagedObjectContext: context)!
            let movie = Movie(entity: entity, insertIntoManagedObjectContext: context)
            
            movie.title = title
            movie.reason = movieReason.text
            movie.setMovieImage(movieImage.image!)
            movie.url = movieUrl.text
            
            context.insertObject(movie)
            
            do {
                try context.save()
            }catch {
                print("Cannot Add Movie")
            }
            
            dismissViewControllerAnimated(true, completion: nil)
            
        }
        
    }
    

    
}
