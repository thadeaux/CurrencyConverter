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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usdLabel.text = "Amount in USD: $ \(usdAmount)"
        //convertedEUR.text = "EUR: \(eurAmount)"
        //convertedJPY.text = "JPY: \(jpyAmount)"
        //convertedGBP.text = "GBP: \(gbpAmount)"
        //convertedAUD.text = "AUD: \(audAmount)"

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
