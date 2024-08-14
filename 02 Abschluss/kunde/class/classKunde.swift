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
    
    var kontostand: Double {
        didSet {
            print(">>> Dein Kontostand wurde aktualisiert! <<<\n")
        }
    }
    var bonuspunkte: Int {
        didSet {
            print(">>> Deine Bonuspounkte wurden aktualisiert! <<<")
            print("Du hast für diesen Einkauf \(bonuspunkte - oldValue) Bonuspunkte erhalten!\n")
        }
    }
    var warenkorb: Warenkorb {
        didSet {
            print(">>> Dein Warenkorn wurde aktualisiert! <<<\n")
        }
    }
    
    init(kundenNr: String, name: String,  kontostand: Double, bonuspunkte: Int, warenkorb: Warenkorb) {
        self.kundenNr = kundenNr
        self.name = name
        self.kontostand = kontostand
        self.bonuspunkte = bonuspunkte
        self.warenkorb = warenkorb
    }
    

    
    func kontostandAktualisieren(betrag: Double) {
        
        
        
    }
    
    func bonuspunkteAktualisieren(betrag: Double) {
        
        let betragBerechnet = Int(betrag / 10)
        bonuspunkte += betragBerechnet
        
        
    }
    
}
