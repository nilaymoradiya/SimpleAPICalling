//
//  AppLog.swift
//  XcelTechTask
//
//  Created by Nilay M on 03/05/23.
//

import UIKit
import Alamofire

class AppLog: NSObject {

    static func logApi(item: String) {
        print("API:")
        print(item)
    }
    
    static func logApiParameters(item: [String:Any]) {
        do {
            if let data = try? JSONSerialization.data(withJSONObject: item, options: .prettyPrinted),
                let str = String(data: data, encoding: .utf8) {
                print("Parameters:")
                print(str)
            }
        }
        catch let error {
            print(error.localizedDescription)
        }
    }
    
    static func logApiResult(item: DataResponse<String>) {
        guard let data = item.data, data.count > 0 else {
            print(item.value)
            print(item.result.value)
            return
        }
        do {
            let dict = try JSONSerialization.jsonObject(with: data, options: [])
            //print(dict)
            if let data = try? JSONSerialization.data(withJSONObject: dict, options: .prettyPrinted),
                let str = String(data: data, encoding: .utf8) {
                print("Response:")
                print(str)
            }
            else {
                print(dict)
            }
        }
        catch let error {
            print(error.localizedDescription)
            print(item.value)
        }
    }
}
