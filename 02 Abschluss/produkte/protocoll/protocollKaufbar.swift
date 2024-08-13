//
//  protocollKaufbar.swift
//  02 Abschluss
//
//  Created by Markus Wirtz on 12.08.24.
//

import Foundation


protocol Kaufbar {
    var preis: Double { get }
    var lagerbestand: Int { get }
    
    func aktualisiereLagerbestand(bestand: Int)
    
}
