//
//  classMacBookAir.swift
//  02 Abschluss
//
//  Created by Markus Wirtz on 12.08.24.
//

import Foundation

class MacBookAir: Produkt {
    
    let prozessor: String
    
    init(artikelNr: String, name: String, preis: Double, lagerbestand: Int, prozessor: String) {
        self.prozessor = prozessor
        super.init(artikelNr: artikelNr, name: name, preis: preis, lagerbestand: lagerbestand)
    }
    
    func upgradeProzessor() {
        
    }
    
}
