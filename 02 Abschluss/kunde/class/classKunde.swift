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
            for _ in 1...4 {
                print("\t💰", terminator: " ")
                Thread.sleep(forTimeInterval: 0.4)
            }
            print()
            print("\t💰 Dein Konto wurde mit \(oldValue - kontostand) € belastet! <<<\n")
            sleep(1)
        }
    }
    var bonuspunkte: Int {
        didSet {
            for _ in 1...4 {
                print("\t🔸", terminator: " ")
                Thread.sleep(forTimeInterval: 0.4)
            }
            print()
            print("\t🔸 Deine Bonuspounkte wurden aktualisiert! <<<")
            print("\t   Bonuspunkte: \(bonuspunkte - oldValue)\n")
            sleep(3)
        }
    }
    var warenkorb: Warenkorb {
        didSet {
            if warenkorb.produkte.isEmpty {
                print("\t🛍️ Warenkorb enthält keine Artikel mehr!\n")
            } else {
                for _ in 1...4 {
                    print("\t🛍️", terminator: " ")
                    Thread.sleep(forTimeInterval: 0.4)
                }
                print()
                print("\t🛍️ Warenkorb wurde aktualisiert!\n")
                sleep(1)
            }
            sleep(2)
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
        bonuspunkte += Int(betrag * 15)
    }
    
    func bonuspunkteReduzieren(punkte: Int) {
        bonuspunkte -= punkte
    }
}
