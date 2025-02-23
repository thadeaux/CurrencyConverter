//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Thad Aldridge on 2/19/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currencyInput: UITextField!
    
    var currencyLogic = CurrencyLogic()
    var usdamount = ""
    var euramount = ""
    var jpyamount = ""
    var gbpamount = ""
    var audamount = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
   @IBAction func eurSwitch(_ sender: UISwitch) {
       if sender.isOn {
           euramount = String(currencyLogic.convertEUR(currencyInput.text!))
       }
        
    }
    
    @IBAction func jpySwitch(_ sender: UISwitch) {
        if sender.isOn {
            jpyamount = String(currencyLogic.convertJPY(currencyInput.text!))
        }
       
    }
    
    @IBAction func gbpSwitch(_ sender: UISwitch) {
        
        
    }
    
    @IBAction func audSwitch(_ sender: UISwitch) {
        
        
    }
    
    @IBAction func convertButton(_ sender: UIButton) {
        usdamount = currencyInput.text!
        
        //jpyamount = String(currencyLogic.convertJPY(currencyInput.text!))
        gbpamount = String(currencyLogic.convertGBP(currencyInput.text!))
        audamount = String(currencyLogic.convertAUD(currencyInput.text!))
        
        self.performSegue(withIdentifier: "toConvertedAmount", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "toConvertedAmount" {
            let navigation = segue.destination as! ConvertedAmountView
            navigation.usdAmount = usdamount
            navigation.eurAmount = euramount
            navigation.jpyAmount = jpyamount
            navigation.gbpAmount = gbpamount
            navigation.audAmount = audamount
            
        }
    }
    

}

