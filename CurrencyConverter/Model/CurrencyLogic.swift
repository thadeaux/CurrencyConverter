//
//  CurrencyLogic.swift
//  CurrencyConverter
//
//  Created by Thad Aldridge on 2/23/25.
//
import Foundation

struct CurrencyLogic {
    
    var eurConv : Float = 0.96
    var jpyConv : Float = 150.75
    var gbpConv : Float = 0.79
    var audConv : Float = 1.58
    var eur : Float = 0.0
    var jpy : Float = 0.0
    var gbp : Float = 0.0
    var aud : Float = 0.0
    
    mutating func setEurSwitch(_ eurSwitch: Bool) {
        if eurSwitch {
            
        }
    }
    
    mutating func getEurAmount(_ eurAmount: String) -> Float {
        return convertEUR(eurAmount)
    }
    
    mutating func getJpyAmount(_ jpyAmount: String) -> Float {
        return convertJPY(jpyAmount)
    }
    
    mutating func getGbpAmount(_ gbpAmount: String) -> Float {
        return convertGBP(gbpAmount)
    }
    
    mutating func getAudAmount(_ audAmount: String) -> Float {
        return convertAUD(audAmount)
    }
    
    mutating func convertEUR(_ usd: String) -> Float {
        let inputToInt: Int? = Int(usd)
        let result = Float(inputToInt!) * eurConv
        return result
    }
    
    mutating func convertJPY(_ usd: String) -> Float {
        let inputToInt: Int? = Int(usd)
        let result = Float(inputToInt!) * jpyConv
        return result
    }
    
    mutating func convertGBP(_ usd: String) -> Float {
        let inputToInt: Int? = Int(usd)
        let result = Float(inputToInt!) * gbpConv
        return result
    }
    
    mutating func convertAUD(_ usd: String) -> Float {
        let inputToInt: Int? = Int(usd)
        let result = Float(inputToInt!) * audConv
        return result
    }
        
}
