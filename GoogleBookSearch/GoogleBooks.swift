//
//  GoogleBooks.swift
//  GoogleBookSearch
//
//  Created by MAC PRO on 1/14/19.
//  Copyright © 2019 Malek. All rights reserved.
//

import Foundation
import Unbox
import Alamofire



//make book with fields
struct Book{
    
    let identifier: String
    let title: String
    let authors: [String]?
    let subtitle: String
    let date: String
    
}


extension Book: Unboxable {
    init(unboxer: Unboxer) throws {
        self.identifier = try unboxer.unbox(key: "id")
        self.title = try unboxer.unbox(keyPath: "volumeInfo.title")
        self.authors = unboxer.unbox(keyPath: "volumeInfo.authors")
        self.subtitle = try unboxer.unbox(keyPath: "volumeInfo.subtitle")
        self.date = try unboxer.unbox(keyPath: "volumeInfo.publishedDate")

    }
    
}
