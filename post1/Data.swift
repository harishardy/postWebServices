//
//  Data.swift
//  post1
//
//  Created by Karthik on 22/06/19.
//  Copyright © 2019 Karthik. All rights reserved.
//

import Foundation

struct Root : Codable {
    let userInfo : UserInfo
}
struct UserInfo : Codable {
    let username : String
    let password : String
}
