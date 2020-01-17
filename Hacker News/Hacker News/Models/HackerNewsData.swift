//
//  HackerNewsData.swift
//  Hacker News
//
//  Created by Suman Sigdel on 1/16/20.
//  Copyright © 2020 Suman Sigdel. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
    
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
