//
//  ViewController.swift
//  LayBy
//
//  Created by Ceren on 14.03.2020.
//  Copyright © 2020 Ceren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTotalMoney: UILabel!
    @IBOutlet weak var txtMoneyAmount: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblTotalMoney.text = "0"
        let totalMoneyVariable = UserDefaults.standard.object(forKey: "totalMoney")
        
        if let newTotalMoneyVariable = totalMoneyVariable as? String{
            lblTotalMoney.text = newTotalMoneyVariable
        }
    }

    @IBAction func clickAddMoneyBox(_ sender: Any) {
        if let totalMoney = Int(txtMoneyAmount.text!){
            lblTotalMoney.text = String(Int(lblTotalMoney.text!)! + Int(txtMoneyAmount.text!)!)
            UserDefaults.standard.set(lblTotalMoney.text!, forKey: "totalMoney")
        }
    }
    
}

