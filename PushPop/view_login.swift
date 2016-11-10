//
//  view_login.swift
//  PushPop
//
//  Created by Pham Ngoc Hai on 11/10/16.
//  Copyright © 2016 Mystudio. All rights reserved.
//

import UIKit

class view_login: UIViewController {
    var users = ["cuong":"123", "dat":"456", "tien":"789", "hai":"1257"]
    @IBOutlet weak var Tf_Passwpord: UITextField!
    @IBOutlet weak var Tf_user: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
 
    }

    @IBAction func But_DN(_ sender: Any) {
        if let password = users[Tf_user.text!]
        {
            if password == Tf_Passwpord.text
            {
                print("Dang nhap thanh cong")
                let viewMath = self.storyboard?.instantiateViewController(withIdentifier: "MathforKid") as! View_Math
                self.navigationController?.pushViewController(viewMath, animated: true)
                
            }else{
                print("sai mat khau")
            }
        }
        else
        {
            print("Tai khoan khong ton tai")
        }
        

        
        
        
        
    }
}
