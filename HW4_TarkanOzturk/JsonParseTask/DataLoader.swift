//
//  DataLoader.swift
//  JsonParseTask
// 
//  Created by Tarkan Ozturk on 8/15/20.
//  Copyright © 2020 Tarkan Ozturk. All rights reserved.
//

import Foundation

class DataLoader {
    
    var wordData = [WordData]()
    
    static let shared = DataLoader()
    
    private init() { }
    
    func loadFromInternet(completion: @escaping(_ data: [WordData]) -> ()) {
        
        if let url = URL(string: "https://northwind.vercel.app/api/categories") {

            URLSession.shared.dataTask(with: url) { (data, response, error) in
                
                if let data = data {
                    
                    do {
                        let jsonDecoder = JSONDecoder()
                        let dataFromJson = try jsonDecoder.decode([WordData].self, from: data)
                        completion(dataFromJson)
                        
                        
                        print(dataFromJson)
                    }
                    catch let error {
                        print(error)
                    }
                    print(data)
                }

            }.resume()
        }
    }
    
}
