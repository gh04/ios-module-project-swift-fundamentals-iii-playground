import UIKit


enum Currency {
    case cad
    case mxn
}



let usToCad = 1.27
let usToMxn = 20.97

var currency: Currency = .mxn

func convert(_ dollars: Double) -> Double {
  
//    let cad = dollars * usToCad
//    let mxn = dollars * usToMxn
    
    switch currency {
    case .cad:
        return dollars * usToCad
    case .mxn:
        return dollars * usToMxn
    }
    
}

func convert(amountString: String) -> String? {
    
    let amount = Double(amountString)
    
    guard let unwrappedAmount = amount else {
       return "Enter a valid number"
    }
    
    
    return String(convert(unwrappedAmount))
}


convert(amountString: "10")




