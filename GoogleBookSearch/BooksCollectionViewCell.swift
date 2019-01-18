//
//  BooksCollectionViewCell.swift
//  GoogleBookSearch
//
//  Created by MAC PRO on 1/14/19.
//  Copyright © 2019 Malek. All rights reserved.
//

import UIKit




class BooksCollectionViewCell:  UICollectionViewCell{
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    
    func configure(with book: Book) {
    self.titleLabel.text = book.title
    
    
    // to display multiple authors
    
    if let authors = book.authors {
        var text = ""
        for author in authors {
            text.append(author + ", ")
        }
       // text.removeLast()
        //text.removeLast()
        self.authorLabel.text = text
    } else {self.authorLabel.text = "Author unknown"}
    }
    
    
    
    //copied this from Dishwasher
    override func prepareForReuse() {
        super.prepareForReuse()
        
        //imageView.image = nil
        
    }

    
}
