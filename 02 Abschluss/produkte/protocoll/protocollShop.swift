//
//  protocollShop.swift
//  02 Abschluss
//
//  Created by Markus Wirtz on 19.08.24.
//

import Foundation

protocol Shopsystem {
    
    var produkte: [Produkt] { get set }
    var kunden: [Kunde] { get set}
    var tagesDeals: [Double] { get }
    var pay: Zahlungsmethode { get set }
    var status: ShopStatus { get set}

    mutating func startShopping(aktiverKunde: Kunde)

}

