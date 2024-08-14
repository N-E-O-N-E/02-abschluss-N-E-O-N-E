//
//  classIPhone.swift
//  02 Abschluss
//
//  Created by Markus Wirtz on 12.08.24.
//

import Foundation

class IPhone: Produkt {
    
    let speicher: Int
    
    init(artikelNr: String, name: String, preis: Double, lagerbestand: Int, speicher: Int) {
        self.speicher = speicher
        super.init(artikelNr: artikelNr, name: name, preis: preis, lagerbestand: lagerbestand)
    }
    
    override func anzeigen() {
        
        print("\tName: \(name), Preis: \(preis) EUR, Arbeitsspeicher: \(speicher) GB")
        
    }
    
    func upgradeSpeicher() {
        
        
    }
    
}
