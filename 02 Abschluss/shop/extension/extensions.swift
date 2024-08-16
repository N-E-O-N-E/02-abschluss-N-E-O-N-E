//
//  extensions.swift
//  02 Abschluss
//
//  Created by Markus Wirtz on 14.08.24.
//

import Foundation

// Zur korrekten Darstellung der Tabelle im Shop
extension String {
    
    func spaltenbreite(laenge: Int) -> String {
        if self.count < laenge {
            return self + String(repeating: " ", count: laenge - self.count) // erweitert die länge mit leerzeichen
        } else {
            return String(self.prefix(laenge)) // lürzt die länge fals .self zu kange ist
        }
    }
}

extension Double {
    
    // Formatierung der Preise in ##.###,##
    var formatierterPreis: String {
        
        let neuesFormat = NumberFormatter()
        neuesFormat.numberStyle = .decimal
        neuesFormat.groupingSeparator = "."
        neuesFormat.decimalSeparator = ","
        neuesFormat.minimumFractionDigits = 2
        neuesFormat.maximumFractionDigits = 2
        
        // Konvertiert den Double (self) in ein NSNumber-Objekt für die Methode string(from:)
        return neuesFormat.string(from: NSNumber(value: self)) ?? "Fehler"
    }
    
    // Formatierung in Prozent %
    var formatierterPreisOhneKomma: String {
        
        let neuesFormat = NumberFormatter()
        neuesFormat.numberStyle = .percent
        
        // Konvertiert den Double (self) in ein NSNumber-Objekt für die Methode string(from:)
        return neuesFormat.string(from: NSNumber(value: self)) ?? "Fehler"
    }
}
