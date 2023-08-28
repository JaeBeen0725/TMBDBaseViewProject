//
//  TMBDManager.swift
//  TMBDBaseViewProject
//
//  Created by Jae Oh on 2023/08/28.
//

import Foundation
import Alamofire
import SwiftyJSON
class TMBDManager {
//    let tableview = TableView()
    static let shared = TMBDManager()
    
    private init() {}
    
    
    func callRequestCodable(success: @escaping (TMDBData) -> Void, failer: @escaping () -> Void) {
        print("data", #function)
        let url = "https://api.themoviedb.org/3/trending/all/week?api_key=\(APIKey.tmbdKey)"

        AF.request(url, method: .get).validate(statusCode: 200...500).responseDecodable(of: TMDBData.self) { response in

            switch response.result {

            case .success(let value):
                success(value)

            case .failure(let error):
                print(error)
                failer()

            }
         



        }

    }
    
    
}
