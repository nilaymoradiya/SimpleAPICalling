//
//  RegisterRepository.swift
//  XcelTechTask
//
//  Created by Nilay M on 03/05/23.
//

import UIKit
import ObjectMapper
import Alamofire

class RegisterRepository: NSObject {

    func register(parameters: [String: Any], completion : @escaping (_ response : RegisterResponseModel?) -> ()) {
        guard CommonHelper.isConnectedToNetwork() else {
            completion(nil)
            return
        }
        
        let api = kBaseUrl + APIEndPoints.register
        AppLog.logApi(item: api)
        AppLog.logApiParameters(item: parameters)
        Alamofire.request(api, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: nil).responseString { (data) in
            AppLog.logApiResult(item: data)
            guard data.result.isSuccess else {
                completion(nil)
                return
            }
            guard let values = data.result.value else {
                completion(nil)
                return
            }
            let array = Mapper<RegisterResponseModel>().map(JSONString: values)
            completion(array)
        }
    }
}
