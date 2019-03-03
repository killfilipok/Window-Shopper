//
//  CurrencyTextField.swift
//  window-shoper
//
//  Created by Philip on 3/2/19.
//  Copyright © 2019 Philip. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        
        let currenctLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2) - size/2, width: size, height: size))
        
        currenctLbl.backgroundColor = #colorLiteral(red: 0.7863379121, green: 0.7816646695, blue: 0.7899309397, alpha: 0.8057844606)
        currenctLbl.textAlignment = .center
        currenctLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        currenctLbl.layer.cornerRadius = 5.0
        currenctLbl.clipsToBounds = true
        let formater = NumberFormatter()
        formater.numberStyle = .currency
        formater.locale = .current
        currenctLbl.text = formater.currencySymbol
        addSubview(currenctLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
        customizeView()
    }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2509096747)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder{
            let place = NSAttributedString(string: p
                , attributes: [.foregroundColor:#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            
            attributedPlaceholder = place
        }
    }

}
