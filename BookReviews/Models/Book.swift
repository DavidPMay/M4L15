//
//  Book.swift
//  BookReviews
//
//  Created by David May on 2/28/23.
//

import Foundation

class Book:  Identifiable, Decodable {
    
    var uid: UUID?
    var title: String
    var author: String
    var isFavourite: Bool
    var currentPage: Int
    var rating: Int
    var id: Int
    var content: [String]
    var image: String
    
}

