//
//  protocollRabattierbar.swift
//  02 Abschluss
//
//  Created by Markus Wirtz on 12.08.24.
//

import Foundation


protocol Geschenkoptionen {
    
    var geschenk: [Geschenk] { get set}
    var geschenkGrenzen: (Double, Double, Double) { get set }
    
    func geschenkOption(warenkorbWert: Double) -> Geschenk?
    mutating func geschenkHinzu(neuesGeschenk: Geschenk)
}
