//
//  BookModel.swift
//  BookReviews
//
//  Created by David May on 2/28/23.
//

import Foundation

class BookModel: ObservableObject {
    @Published var books = [Book]()
    
    init() {
        self.books = DataService.getLocalData()
    }
}
