//
//  ViewController.swift
//  PushPop
//
//  Created by Pham Ngoc Hai on 11/10/16.
//  Copyright © 2016 Mystudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl_ten: UILabel!
    @IBOutlet weak var lbl_Zing: UILabel!
    @IBOutlet weak var but_Login: UIButton!
   
    @IBOutlet weak var img_zing: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl_Zing!.alpha = 0
        lbl_ten!.alpha = 0
        img_zing!.alpha = 0
        but_Login!.alpha = 0
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animate(withDuration: 2, animations: {
            self.img_zing!.alpha = 1
        }, completion: { (finished) in
            UIView.animate(withDuration: 3, animations: {
                self.lbl_Zing!.center = CGPoint(x: self.img_zing!.center.x, y: 100)
                self.lbl_Zing!.alpha = 1
            }, completion: { (finished) in
                UIView.animate(withDuration: 3, animations: {
                    self.lbl_ten!.center = CGPoint(x: self.img_zing!.center.x, y: 480)
                    self.lbl_ten!.alpha = 1
                }, completion: { (finished) in
                    UIView.animate(withDuration: 3, animations: {
                        self.but_Login!.center = CGPoint(x: self.img_zing!.center.x, y: 520)
                        self.but_Login!.alpha = 1
                    })
                })
            })
        })

    }

    @IBAction func but_Login(_ sender: Any) {
    let viewLogin = self.storyboard?.instantiateViewController(withIdentifier: "View_login") as! view_login
        self.navigationController?.pushViewController(viewLogin, animated: true)
    }
    
    
    
}

