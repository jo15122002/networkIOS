//
//  NetworkManager.swift
//  network
//
//  Created by digital on 30/11/2022.
//

import Foundation
import UIKit

class NetworkManager{
    static let instance = NetworkManager()
    
    func download(urlString:String, callBack:@escaping (UIImage?)->()) -> String{
        guard let url = URL(string: urlString) else {return "Url pas bonne"}
        let urlrequest = URLRequest(url: url)
        URLSession.shared.dataTask(with: urlrequest){ data, response, err in
            
            guard err == nil else {
                print("une erreur est survenue")
                callBack(nil)
                return
            }
            
            if let d = data {
                DispatchQueue.main.async {
                    callBack(UIImage(data: d))
                }
            }else{
                callBack(nil)
            }
        }.resume()
        
        return "Success"
    }
}
