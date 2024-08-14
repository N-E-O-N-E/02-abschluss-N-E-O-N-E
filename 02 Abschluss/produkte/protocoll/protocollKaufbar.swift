//
//  protocollKaufbar.swift
//  02 Abschluss
//
//  Created by Markus Wirtz on 12.08.24.
//

import Foundation

// wird in Produkt verwendet

protocol Kaufbar {
    var preis: Double { get }
    var lagerbestand: Int { get }
    
    func reduziereLagerbestand(bestand: Int)
    
}
