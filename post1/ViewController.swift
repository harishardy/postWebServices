//
//  ViewController.swift
//  post1
//
//  Created by Karthik on 22/06/19.
//  Copyright © 2019 Karthik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        p1()
    }
    
    let url = URL(string: "http://saramobileapps.com/mtc/checkLogin.php")
    
    let user = "ram"
    let pass = "ram"

    let json : [String:Any] = ["username" : "ram", "password" : "ram"]

    func p1 () {
     
        var request = URLRequest(url: url!)
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        let postString = "username=\(user)&password=\(pass)"
        

        request.httpBody = postString.data(using: .utf8)
        
        
        URLSession.shared.dataTask(with: request)
        {
            data, response, error in
            
            do {
                let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions()) as? NSDictionary
                let ar = jsonResponse!["userInfo"] as? [String:Any]
                print(ar)
                print(ar!["email"] as! String)
                print(ar!["address"] as! String)
            }
                
            catch {
                
            }
            }.resume()

    }
    

    
    

}

