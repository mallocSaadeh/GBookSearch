//
//  NetworkService.swift
//  GoogleBookSearch
//
//  Created by MAC PRO on 1/10/19.
//  Copyright © 2019 Malek. All rights reserved.
//

import Foundation
import Alamofire
import Unbox



class NetworkService{
    
    // google books API. Version 1. Volume. Query. Holy Shit
    let baseURL = "https://www.googleapis.com/books/v1/volumes?q=Holy"
    
   // let myAPIKey =
    
    typealias  CompletionHandler = ([Book]) -> ()
    
    func search(for text: String, completion: CompletionHandler){
        
        //Alamofire used to make network calls (as well as other things)
        //make Alamofire request. Use CocoaPods
               let url = baseURL + text // + "&key=" + MYAPIKEY
        //if you have an API key, use the stuff after parentheses^
        print("making request: \(url)")
        
        Alamofire.request(url).responseJSON(){ response in
            //print out response from server
            print("Got response:")
            print(response.result.value ?? "None")
        }
        
    }
    
}

//Alamofire.request(baseURL + text).responseJSON(){ response in
//    
//    guard let value = response.result.value
//        else{
//            print("None found")
//            return
//    }
//    
//    let dict = value as!  [String:Any]
//    
//    
//    guard let books : [Book] = try? unbox(dictionary: dict, atKey: "items")
//        else{
//            print("Unbox failed")
//            return
//    }
//    completion(books)
//    
//    
//}










