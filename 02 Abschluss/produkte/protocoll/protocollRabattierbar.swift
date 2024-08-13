//
//  protocollRabattierbar.swift
//  02 Abschluss
//
//  Created by Markus Wirtz on 12.08.24.
//

import Foundation


protocol Rabattierbar {
    var rabatt: Double { get set }
    var originalpreis: Double { get }
    
    func berechnePreis() -> Double
    
}
