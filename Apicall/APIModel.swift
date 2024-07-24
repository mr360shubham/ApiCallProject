//
//  APIModel.swift
//  Apicall
//
//  Created by Shubam Vijay Yeme on 15/07/24.
//

import Foundation

struct MovieResponse: Decodable {
    let Search: [MovieDetail]
    let totalResults: String
    let Response: String
}

struct MovieDetail: Decodable {
    let Title: String
    let Year: String
}
