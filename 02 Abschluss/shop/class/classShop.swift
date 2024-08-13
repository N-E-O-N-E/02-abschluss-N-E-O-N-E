//
//  classShop.swift
//  02 Abschluss
//
//  Created by Markus Wirtz on 12.08.24.
//

import Foundation

class Shop {
    
    let produkte: [Produkt]
    let kunden: [Kunde]
    let status: ShopStatus
    
    init(produkte: [Produkt], kunden: [Kunde], status: ShopStatus) {
        self.produkte = produkte
        self.kunden = kunden
        self.status = status
    }
    
    func produkteAnzeigen() {
        
        print("Aktuell haben wir folgende Artikel in unserem Shop: \n")
        
        for (index,i) in produkteListe.enumerated() {
            print("Nr. \(index + 1 ))\tArt.Nr: \(i.artikelNr), Produktname: \(i.name), Preis: \(i.preis) EUR, Bestand: \(i.lagerbestand) Stk")
        }
        
        print()
        
    }
    
    func beliebigetaste() {
        print("Weiter mit beliebiger Taste...", terminator: " ")
        let _ = readLine()
    }
    
    func menueAnzeigen() {
        
        print("""

    AppleStore - Hauptmenü
    -------------------------

    1) Kundenkonto anzeigen
    2) Produkte auswählen
    3) Warenkorb anzeigen
    4) Bestellung abschließen

    5) Bestellvorgang abbrechen

""")
        print("Deine Auswahl: ", terminator: " ")
        let usereingabe = readLine()!
        let auswahl = Int(usereingabe)
        
        
        switch auswahl {
            
            
        case 1: // Kundenkonto anzeigen
            
            
            print("""

    Kundenkonto - Übersicht
    -----------------------

    KundenNr        \(aktiverKunde!.kundenNr)
    Kunde           \(aktiverKunde!.name)
    Guthaben        \(aktiverKunde!.kontostand) EUR
    Bonuspunkte     \(aktiverKunde!.bonuspunkte)

    Dein Bonuskonto entspricht aktuell
    einem Wert von: \(aktiverKunde!.bonuspunkte / 100) EUR

""")
            beliebigetaste()
            menueAnzeigen()
            
            
        case 2: // Produktauswahl
            
            let maxIndex = produkteListe.count
            var mengeAuswahl: Int = 0
            
            repeat {
                
                produkteAnzeigen()
                
                print()
                print("Lege Artikel in deinen Warenkorb.")
                print("Wähle zwischen \(produkteListe.startIndex + 1) und \(produkteListe.endIndex) in der Liste. <ENTER> um ins Hauptmenü zu gelangen.")
                print("Deine Auswahl: ", terminator: "")
                
                if let kundenauswahl = Int(readLine()!) {
                    
                    if kundenauswahl <= maxIndex {
                        
                        let kundenauswahlProdukt = produkteListe[kundenauswahl - 1]
                        
                        if kundenauswahlProdukt.lagerbestand >= 1 {
                            
                            print("Super, du hast dich für ein \(kundenauswahlProdukt.name.split(separator: " ")[0]) entschieden.")
                            kundenauswahlProdukt.anzeigen()
                            
                            print("Möchtest du mehr als ein Gerät kaufen? (j/n): ", terminator: " ")
                            let auswahl = readLine()!
                            
                            switch auswahl {
                                
                            case "j":
                                
                                print("Super, wieviele möchtest du kaufen: ", terminator: " ")
                                
                                mengeAuswahl = Int(readLine()!)!
                                
                                if mengeAuswahl > 0 {
                                    
                                    if mengeAuswahl < shop_1.produkte[kundenauswahl - 1].lagerbestand {
                                        
                                        print("\(mengeAuswahl) Stk. wurden dem Warenkorb hinzugefügt!")
                                        shop_1.produkte[kundenauswahl - 1].lagerbestand -= mengeAuswahl
                                        aktiverKunde?.warenkorb.hinzufuegen(artikelNr: kundenauswahlProdukt.artikelNr, mengeNeu: mengeAuswahl)
                                        sleep(2)
                                        
                                    } else {
                                        
                                        print("Leider ist unser Lagerbestnd zu gering.")
                                        print("Es wurden dir nur \(shop_1.produkte[kundenauswahl - 1].lagerbestand) Stk in den Warenkorb gelegt!")
                                        aktiverKunde?.warenkorb.hinzufuegen(artikelNr: kundenauswahlProdukt.artikelNr, mengeNeu: shop_1.produkte[kundenauswahl - 1].lagerbestand)
                                        shop_1.produkte[kundenauswahl - 1].lagerbestand = 0
                                        sleep(2)
                                    }
                                    
                                } else {
                                    print("Fehlerhafte Eingabe! ")
                                    print("Die Artikelübersicht wird dir gleich wieder angezeigt! \n")
                                    sleep(2)
                                    break
                                }
                                
                            case "n":
                                
                                print("Ok, dein Produkt wurde 1x dem Warenkorb hinzugefügt!")
                                aktiverKunde?.warenkorb.hinzufuegen(artikelNr: kundenauswahlProdukt.artikelNr, mengeNeu: 1)
                                shop_1.produkte[kundenauswahl - 1].lagerbestand -= 1
                                sleep(2)
                                beliebigetaste()
                                
                                
                            default:
                                break
                            }
                            
                            
                            
                        } else {
                            print("Leider ist dieses Modell nicht mehr an Lager. Aktueller Lagerbestand: \(kundenauswahlProdukt.lagerbestand) Stück")
                            print("Die Artikelübersicht wird dir gleich wieder angezeigt! \n")
                            sleep(3)
                        }
                        
                        
                        
                    } else {
                        print("Leider war deine Eingabe fehlerhaft. Wähle erneut aus!")
                        print("Die Artikelübersicht wird dir gleich wieder angezeigt! \n")
                        sleep(3)
                        
                    }
                    
                } else {
                    print("Ok, wir leiten dich jetzt zurück ins Hauptmenü!", terminator: "")
                    sleep(2)
                    menueAnzeigen()
                }
                
                
            } while true
            
            
            
        case 3:
            
            aktiverKunde?.warenkorb.anzeigen()
            print()
            beliebigetaste()
            menueAnzeigen()
            
        case 4:
            break
            // Bestellung abschließen
        case 5:
            break
            // Bestellung abbrechen
        case 6:
            
            // Testcase
            
            menueAnzeigen()
            
        default:
            break
            // Produkte anzeigen
        }
        
        
    }
    
    
}

