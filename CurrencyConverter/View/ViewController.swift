//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Thad Aldridge on 2/19/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currencyInput: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
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
       currencyLogic.setEurSwitch(sender.isOn)
        
    }
    
    @IBAction func jpySwitch(_ sender: UISwitch) {
        currencyLogic.setJpySwitch(sender.isOn)
       
    }
    
    @IBAction func gbpSwitch(_ sender: UISwitch) {
        currencyLogic.setGbpSwitch(sender.isOn)
        
    }
    
    @IBAction func audSwitch(_ sender: UISwitch) {
        currencyLogic.setAudSwitch(sender.isOn)
        
    }
    
    
    @IBAction func convertButton(_ sender: UIButton) {
        errorLabel.text = "Input must be integer"
        errorLabel.isHidden = true
        usdamount = currencyInput.text!
        if currencyLogic.isInputInteger(usdamount) {
            if currencyLogic.eurSwitch {
                euramount = String(currencyLogic.convertEUR(currencyInput.text!))
            } else {
                currencyLogic.eurSwitch = false
            }
            if currencyLogic.jpySwitch {
                jpyamount = String(currencyLogic.convertJPY(currencyInput.text!))
            }
            if currencyLogic.gbpSwitch {
                gbpamount = String(currencyLogic.convertGBP(currencyInput.text!))
            }
            if currencyLogic.audSwitch {
                audamount = String(currencyLogic.convertAUD(currencyInput.text!))
            }
            self.performSegue(withIdentifier: "toConvertedAmount", sender: self)
        }
        else {
            errorLabel.isHidden = false
            
        }
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
            navigation.eurSwitch = currencyLogic.eurSwitch
            navigation.jpySwitch = currencyLogic.jpySwitch
            navigation.gbpSwitch = currencyLogic.gbpSwitch
            navigation.audSwitch = currencyLogic.audSwitch
            
        }
    }
    

}

