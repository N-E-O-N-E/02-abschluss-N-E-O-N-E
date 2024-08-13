//
//  classIMac.swift
//  02 Abschluss
//
//  Created by Markus Wirtz on 12.08.24.
//

import Foundation

class IMac: Produkt {
    
    let screenSize: String
    
    init(artikelNr: String, name: String, preis: Double, lagerbestand: Int, screenSize: String) {
        self.screenSize = screenSize
        super.init(artikelNr: artikelNr, name: name, preis: preis, lagerbestand: lagerbestand)
    }
    
    
    func upgradeScreenSize() {
        
    }
    
    
}
