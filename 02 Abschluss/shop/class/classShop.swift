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

    KundenNr        \(aktiverKunde?.kundenNr ?? "#Fehler")
    Kunde           \(aktiverKunde?.name ?? "#Fehler")
    Guthaben        \(aktiverKunde?.kontostand ?? 0) EUR
    Bonuspunkte     \(aktiverKunde?.bonuspunkte ?? 0)

    Dein Bonuskonto entspricht aktuell
    einem Wert von: \(aktiverKunde?.bonuspunkte ?? 0 / 100) EUR

""")
            beliebigetaste()
            menueAnzeigen()
            
            
        case 2: // Produktauswahl
            
            let maxIndex = produkteListe.count
            var mengeAuswahl: Int = 0
            var betragBonuspunkte: Double = 0.0
            
            repeat {
                
                produkteAnzeigen()
                
                print()
                print("Lege Artikel in deinen Warenkorb.")
                print("Wähle zwischen \(produkteListe.startIndex + 1) und \(produkteListe.endIndex) in der Liste. <ENTER> um ins Hauptmenü zu gelangen.")
                print("Deine Auswahl: ", terminator: "")
                
                if let kundenauswahl = Int(readLine()!) {
                    
                    if kundenauswahl <= maxIndex {
                        
                        let kundenauswahlProdukt = produkteListe[kundenauswahl - 1]
                        
                        betragBonuspunkte = kundenauswahlProdukt.preis
                        
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
                                    
                                    if mengeAuswahl < kundenauswahlProdukt.lagerbestand {
                                        
                                        print("\(mengeAuswahl) Stk. wurden dem Warenkorb hinzugefügt!")
                                        kundenauswahlProdukt.reduziereLagerbestand(bestand: mengeAuswahl)
                                        aktiverKunde?.warenkorb.hinzufuegen(artikelNr: kundenauswahlProdukt.artikelNr, mengeNeu: mengeAuswahl)
                                        aktiverKunde?.bonuspunkteAktualisieren(betrag: betragBonuspunkte * Double(mengeAuswahl))
                                        sleep(2)
                                        
                                    } else {
                                        
                                        print("Leider ist unser Lagerbestnd zu gering.")
                                        print("Es wurden dir nur \(kundenauswahlProdukt.lagerbestand) Stk in den Warenkorb gelegt!")
                                        
                                        aktiverKunde?.warenkorb.hinzufuegen(artikelNr: kundenauswahlProdukt.artikelNr, mengeNeu: kundenauswahlProdukt.lagerbestand)
                                        kundenauswahlProdukt.reduziereLagerbestand(bestand: kundenauswahlProdukt.lagerbestand)
                                        aktiverKunde?.bonuspunkteAktualisieren(betrag: betragBonuspunkte)
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
                                kundenauswahlProdukt.reduziereLagerbestand(bestand: 1)

                                aktiverKunde?.bonuspunkteAktualisieren(betrag: betragBonuspunkte)
                                
                                
                                
                                
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
            shopStatus = ShopStatus.bestellbestaetigung
            
            aktiverKunde?.warenkorb.anzeigen()
            print()
            beliebigetaste()
            menueAnzeigen()
            
        case 4:
            shopStatus = ShopStatus.bestellabschluss
            break
            // Bestellung abschließen
        case 5:
            break
            // Bestellung abbrechen
        
            
        default:
            break
            // Produkte anzeigen
        }
        
        
    }
    
    
}

