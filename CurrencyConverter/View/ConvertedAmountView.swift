//
//  ConvertedAmountView.swift
//  CurrencyConverter
//
//  Created by Thad Aldridge on 2/23/25.
//

import UIKit

class ConvertedAmountView: UIViewController {

    
    @IBOutlet weak var usdLabel: UILabel!
    
    @IBOutlet weak var convertedEUR: UILabel!
    
    @IBOutlet weak var convertedJPY: UILabel!
    
    @IBOutlet weak var convertedGBP: UILabel!
    
    @IBOutlet weak var convertedAUD: UILabel!
    
    var usdAmount = ""
    var eurAmount = ""
    var jpyAmount = ""
    var gbpAmount = ""
    var audAmount = ""
    var eurSwitch = true
    var jpySwitch = true
    var gbpSwitch = true
    var audSwitch = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usdLabel.text = "Amount in USD: $\(usdAmount)"
        if eurSwitch {
            convertedEUR.text = "EUR: \(eurAmount)"
        } else {
            convertedEUR.isHidden = true
        }
        if jpySwitch {
            convertedJPY.text = "JPY: \(jpyAmount)"
        } else {
            convertedJPY.isHidden = true
        }
        if gbpSwitch {
            convertedGBP.text = "GBP: \(gbpAmount)"
        } else {
            convertedGBP.isHidden = true
        }
        if audSwitch {
            convertedAUD.text = "AUD: \(audAmount)"
        } else {
            convertedAUD.isHidden = true
        }
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    */

}
