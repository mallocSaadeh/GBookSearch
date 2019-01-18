//
//  GoogleBookSearch.swift
//  GoogleBookSearch
//
//  Created by MAC PRO on 1/14/19.
//  Copyright © 2019 Malek. All rights reserved.
//

import Foundation
import Unbox


struct Repository {
    let title: String
    let author: [String]?
    let subtitle: String
    let date: String
}


extension Repository: Unboxable{
    init(unboxer: Unboxer) throws {
        self.title = try unboxer.unbox(key: "title")
        self.author = try? unboxer.unbox(keyPath: "author")
        self.subtitle = try unboxer.unbox(keyPath: "subtitle")
        self.date = try unboxer.unbox(keyPath: "publishedDate")
    }
}





