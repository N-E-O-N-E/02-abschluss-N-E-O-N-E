//
//  classKunde.swift
//  02 Abschluss
//
//  Created by Markus Wirtz on 12.08.24.
//

import Foundation

class Kunde {
    
    let kundenNr: String
    let name: String
    let kontostand: Double
    let bonuspunkte: Int
    var warenkorb: Warenkorb
    
    init(kundenNr: String, name: String,  kontostand: Double, bonuspunkte: Int, warenkorb: Warenkorb) {
        self.kundenNr = kundenNr
        self.name = name
        self.kontostand = kontostand
        self.bonuspunkte = bonuspunkte
        self.warenkorb = warenkorb
    }
    
    func anzeigen() {
        
    }
    
    func kontostandAktualisieren() {
        
    }
    
    func bonuspunkteAktualisieren() {
        
    }
    
}
