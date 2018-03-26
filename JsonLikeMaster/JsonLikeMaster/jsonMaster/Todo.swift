//
//  Todo.swift
//  JsonLikeMaster
//
//  Created by Mateusz Chojnacki on 26.03.2018.
//  Copyright © 2018 Mateusz Chojnacki. All rights reserved.
//

import Foundation


struct Todo: Codable{
    var title:String
    var id:Int?
    var userId:Int
    var completed:Int
    
    init?(json: [String:Any]) {
        guard let title = json["title"] as? String,
        let id = json["id"] as? Int,
        let userId = json["userId"] as? Int,
        let completed = json["completed"] as? Int else{
                return nil
        }
        self.title = title
        self.id = id
        self.userId = userId
        self.completed = completed
    }
    
    static func endpointForID(_ id: Int) ->String{
        return "https://jsonplaceholder.typicode.com/todos/\(id)"
    }
    
    enum BackendError: Error {
        case urlError(reason: String)
        case objectSerialization(reason: String)
    }
    
    static func todoByID(_ id:Int, completionHandler: @escaping (Todo?, Error?) -> Void){
        // set 
    }
    
}
