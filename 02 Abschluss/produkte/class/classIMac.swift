//
//  classIMac.swift
//  02 Abschluss
//
//  Created by Markus Wirtz on 12.08.24.
//

import Foundation

class IMac: Produkt {
    
    let caseColor: String
    
    init(artikelNr: String, name: String, preis: Double, lagerbestand: Int, caseColor: String) {
        self.caseColor = caseColor
        super.init(artikelNr: artikelNr, name: name, preis: preis, lagerbestand: lagerbestand)
    }
    
    override func anzeigen() {
        
        print("Name: \(name), Preis: \(preis) EUR, Farbe: \(caseColor)")
        
    }
    
    func upgradeScreenSize() {
        
    }
    
    
}
