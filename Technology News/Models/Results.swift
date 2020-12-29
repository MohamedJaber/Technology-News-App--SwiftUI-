//
//  Results.swift
//  Technology News
//
//  Created by Mohamed Jaber on 12/1/20.
//

import Foundation

struct Results: Decodable{
    let hits: [Post]
}

struct Post: Decodable, Identifiable{
    var id: String{	
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
