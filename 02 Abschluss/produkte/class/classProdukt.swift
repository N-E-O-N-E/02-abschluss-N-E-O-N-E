//
//  classProdukt.swift
//  02 Abschluss
//
//  Created by Markus Wirtz on 12.08.24.
//

import Foundation

class Produkt {
    
    let artikelNr: String
    let name: String
    let preis: Double
    let lagerbestand: Int
    
    init(artikelNr: String, name: String, preis: Double, lagerbestand: Int) {
        self.artikelNr = artikelNr
        self.name = name
        self.preis = preis
        self.lagerbestand = lagerbestand
    }
    
    func anzeigen() {
        
    }
    
    func rabattgeben(prozent: Int) {
        
    }
    
}
