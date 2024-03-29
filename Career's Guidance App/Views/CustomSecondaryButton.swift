//
//  CustomSecondaryButton.swift
//  CGA
//
//  Created by Emma Roche on 21/01/2023.
//

import UIKit

class CustomSButton: UIButton {
    
    enum FontSize {
        case bigSb
        case medSb
        case smallSb
    }
    
    init(title: String, hasBackground: Bool = false, fontSize: FontSize) {
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.layer.cornerRadius = 12
        // Drop shadow
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 3)
        self.layer.shadowOpacity = 0.25
        self.layer.shadowRadius = 3
        self.layer.masksToBounds = false
        
        self.backgroundColor = hasBackground ? .white: .clear
        
        let titleColor: UIColor = hasBackground ? UIColor(red: 0.16, green: 0.20, blue: 0.33, alpha: 1.00) : .systemBlue
        self.setTitleColor(titleColor, for: .normal)
        
        switch fontSize {
        case .bigSb:
            self.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
            
        case .medSb:
            self.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
            
        case .smallSb:
            self.titleLabel?.font = .systemFont(ofSize: 16, weight: .regular)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
