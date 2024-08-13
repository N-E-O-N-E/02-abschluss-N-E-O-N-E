//
//  structWarenkorb.swift
//  02 Abschluss
//
//  Created by Markus Wirtz on 12.08.24.
//

import Foundation

struct Warenkorb {
    
    var produkte: [String: Int]
    
    mutating func hinzufuegen(artikelNr: String, mengeNeu: Int) {
           
                if let menge = produkte[artikelNr] {
                    produkte[artikelNr] = menge + mengeNeu
                } else {
                    produkte[artikelNr] = mengeNeu
                }
            }
    
    // Empfängt ein Array vom Typ Produkt und eine String ArtikelNr. Liefert ein Produkt oder nil zurück.
    func findeArtikel(liste: [Produkt], artikelnummer: String) -> Produkt? {
        // Gibt das erste Element im Array zurück bei dem die übergebene Arikelnummer der "artikelNr" in der Liste (Array) entspricht.
        return liste.first { $0.artikelNr == artikelnummer}
    }
    
    
    func gesamtpreis(liste: [Produkt]) -> Double {
        var gesamtsumme = 0.0
        
        // durchläuft alle Artikelnummern, Mengen in den Produkten des Warenkorbes
        for (artikelnummer, menge) in produkte {
            
            // speichert den gefundenen Artikel vom Typ Produkt in match
            if let match = findeArtikel(liste: liste, artikelnummer: artikelnummer) {
                gesamtsumme += match.preis * Double(menge)
            } else {
                print("Produkt ArtikelNr. \(artikelnummer), nicht gefunden!")
            }
            
        }
        
        return gesamtsumme
    
    }
    
    func anzeigen() {
        
        if produkte.isEmpty {
            print("Der Warenkornb ist leer!")
        } else {
            print("Dein Warenkorb enthällt aktuell: \n")
            for (artikelkNr, menge) in produkte {
                print("         Menge: \(menge)\tArtikelNr.: \(artikelkNr)")
            }
        }
        
        let warenWert = aktiverKunde?.warenkorb.gesamtpreis(liste: produkteListe)
        print("\n         Gesamtwert deines Warenkorbes: \(String(format: "%.2f",warenWert!)) EUR")
        
    }
    
}
