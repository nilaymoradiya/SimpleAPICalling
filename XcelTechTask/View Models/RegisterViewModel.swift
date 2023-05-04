//
//  RegisterViewModel.swift
//  XcelTechTask
//
//  Created by Nilay M on 03/05/23.
//

import UIKit

class RegisterViewModel: NSObject {

    fileprivate let repo: RegisterRepository = RegisterRepository()
    
    func register(completion : @escaping (_ response : Bool) -> ()) {
        
        var parameters: [String:Any] = [:]
        parameters["user_name"] = "irfanLuhar"
        parameters["email"] = "irfan@mailinator.com"
        parameters["country_code"] = "+91"
        parameters["contact_number"] = "9687380154"
        parameters["password"] = "Test@123"
        parameters["confirm_password"] = "Test@123"
        parameters["user_device_id"] = 1
        parameters["fcm_token"] = 1
        parameters["time_zone"] = 1
        CommonHelper.showProgress()
        repo.register(parameters: parameters, completion: { response in
            CommonHelper.hideProgress()
            if response != nil {
                completion(true)
            }
            else {
                completion(false)
            }
        })
    }
}
