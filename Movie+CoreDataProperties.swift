//
//  Movie+CoreDataProperties.swift
//  MyFavoriteMovies
//
//  Created by Vinodh Srinivasan on 6/25/16.
//  Copyright © 2016 oneMore. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Movie {

    @NSManaged var image: NSData?
    @NSManaged var title: String?
    @NSManaged var reason: String?
    @NSManaged var url: String?

}
