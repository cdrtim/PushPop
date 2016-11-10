//
//  View_Math.swift
//  PushPop
//
//  Created by Pham Ngoc Hai on 11/10/16.
//  Copyright © 2016 Mystudio. All rights reserved.
//

import UIKit

class View_Math: UIViewController {
    
    @IBOutlet weak var lbl_so1: UILabel!
    
    @IBOutlet weak var but_so3: UIButton!
    @IBOutlet weak var but_so2: UIButton!
    @IBOutlet weak var but_so1: UIButton!
    @IBOutlet weak var lbl_Kq: UILabel!
    @IBOutlet weak var lbl_so2: UILabel!
    @IBOutlet weak var Lbl_sai: UILabel!
    @IBOutlet weak var lbl_Dung: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setRandom()
        // Do any additional setup after loading the view.
    }
    // Biến toàn cục đúng sai
    var Dung = 0
    var Sai = 0
    // Biến toàn cục để xem đáp án đúng hay sai
    var randomBut = 0
    @IBAction func Ac_butso1(_ sender: Any) {
        
        if randomBut == 1
        {
            Dung += 1
            print(Dung, Sai)
        }else{
            Sai += 1
            print(Dung, Sai)
        }
        dungsai()
        setRandom()
        
        
        
    }
    
    @IBAction func ac_Butso3(_ sender: Any) {
        
        if randomBut == 3
        {
            Dung += 1
            print(Dung, Sai)
        }else{
            Sai += 1
            print(Dung, Sai)
        }
        dungsai()
        setRandom()
    }
    
    @IBAction func ac_ButSo2(_ sender: Any) {
        if randomBut == 2
        {
            Dung += 1
            print(Dung, Sai)
        }else{
            Sai += 1
            print(Dung, Sai)
        }
        dungsai()
        setRandom()
    }
    
    
    
    
    func dungsai()
    {
        Lbl_sai.text = String(format: "Sai: %d", Sai)
        lbl_Dung.text = String(format: "Đúng: %d", Dung)
    }
    func setRandom()
        
    {
        let random1 = Int(arc4random_uniform(4)) + 1
        let random2 = Int(arc4random_uniform(4)) + 1
        
        //        print("\(random1) \(random2)")
        lbl_so1.text = String(random1)
        lbl_so2.text = String(random2)
        setResult(randomA: random1, randomB: random2)
        
    }
    // Hàm tính kết quả và cho random kết quả vào các nút bấm
    func setResult(randomA: Int, randomB: Int)
    {
        
        randomBut = Int(arc4random_uniform(3)) + 1
        if randomBut == 1
        {
            but_so1.setTitle(String(sum(p1: randomA, p2: randomB)), for: .normal)
            but_so2.setTitle(String(randomB), for: .normal)
            but_so3.setTitle(String(randomA), for: .normal)
        }
        else if randomBut == 2
        {
            but_so1.setTitle(String(randomA), for: .normal)
            but_so2.setTitle(String(sum(p1: randomA, p2: randomB)), for: .normal)
            but_so3.setTitle(String(randomB), for: .normal)
        }
            
        else if randomBut == 3
        {
            but_so1.setTitle(String(randomA), for: .normal)
            but_so2.setTitle(String(randomB), for: .normal)
            but_so3.setTitle(String(sum(p1: randomA, p2: randomB)), for: .normal)
        }
        
    }
    
    // hàm tính tổng trả về kiểu int
    func sum(p1: Int, p2: Int) -> Int
    {
        return p1 + p2;
    }
    
    
    
}


