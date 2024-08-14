//
//  extensions.swift
//  02 Abschluss
//
//  Created by Markus Wirtz on 14.08.24.
//

import Foundation


// Zur korrekten Darstellung der Tabelle im Shop

extension String {
    func spaltenbreite(laenge length: Int) -> String {
        
        if self.count < length {
            return self + String(repeating: " ", count: length - self.count) // erweitert die länge mit leerzeichen
        } else {
            return String(self.prefix(length)) // lürzt die länge fals .self zu kange ist
        }
    }
}


