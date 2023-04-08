//
//  BookReviewsApp.swift
//  BookReviews
//
//  Created by David May on 2/28/23.
//

import SwiftUI

@main
struct BookReviewsApp: App {
    var body: some Scene {
        WindowGroup {
            BookListView()
                .environmentObject(BookModel())
        }
    }
}
