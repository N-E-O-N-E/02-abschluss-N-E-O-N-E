//
//  classKunde.swift
//  02 Abschluss
//
//  Created by Markus Wirtz on 12.08.24.
//

import Foundation

class Kunde {
    
    var kundenNr: String 
    let name: String
    var passwort: String
    var kontostand: Double {
        didSet {
            print("\t💰 Dein Kontostand wurde aktualisiert! <<<\n")
            sleep(1)
        }
    }
    var bonuspunkte: Int {
        didSet {
            print("\t🔸 Deine Bonuspounkte wurden aktualisiert! <<<")
            print("\tDu hast \(bonuspunkte - oldValue) Bonuspunkte erhalten!\n")
            sleep(1)
        }
    }
    var warenkorb: Warenkorb {
        didSet {
            print("\t🛍️ Dein Warenkorb wurde aktualisiert!\n")
            sleep(1)
        }
    }
    
    init(kundenNr: String, name: String, passwort: String) {
        self.kundenNr = kundenNr
        self.name = name
        self.passwort = passwort
        self.kontostand = Double.random(in: 1800...3600)
        self.bonuspunkte = Int.random(in: 60000...150000)
        self.warenkorb = Warenkorb()
        
    }
    
    func kundeHinzufuegen(neuerKunde: Kunde) {
        
        kundenListe.append(neuerKunde)
        print("\n\t👍 Super, deine KundenNr. ist: \(neuerKunde.kundenNr). Viel Spaß!")
        sleep(2)
    }

    func kontostandReduzieren(betrag: Double) {
        kontostand -= betrag
    }
    
    func bonuspunkteAktualisieren(betrag: Double) {
        let betragBerechnet = Int(betrag * 15)
        bonuspunkte += betragBerechnet
    }
    
    func bonuspunkteReduzieren(betrag: Double) {
        let betragBerechnet = Int(betrag * 15)
        bonuspunkte -= betragBerechnet
    }
}
