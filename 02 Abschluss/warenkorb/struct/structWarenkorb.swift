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
    
    
    func anzeigen() {
        
        for (artikelkNr, menge) in produkte {
            
            print("         Menge: \(menge)\tArtikelNr.: \(artikelkNr)")
        }
        
        
    }
    
    func gesamtpreis() {
        
    }
    
}
