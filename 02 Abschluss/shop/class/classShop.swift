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
    var status: ShopStatus
    
    init(produkte: [Produkt], kunden: [Kunde], status: ShopStatus) {
        self.produkte = produkte
        self.kunden = kunden
        self.status = status
    }
    
    func produkteAnzeigen() {
        
        print("""
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
             ██████╗ ██████╗  ██████╗ ██████╗ ██╗   ██╗██╗  ██╗████████╗███████╗
             ██╔══██╗██╔══██╗██╔═══██╗██╔══██╗██║   ██║██║ ██╔╝╚══██╔══╝██╔════╝
             ██████╔╝██████╔╝██║   ██║██║  ██║██║   ██║█████╔╝    ██║   █████╗
             ██╔═══╝ ██╔══██╗██║   ██║██║  ██║██║   ██║██╔═██╗    ██║   ██╔══╝
             ██║     ██║  ██║╚██████╔╝██████╔╝╚██████╔╝██║  ██╗   ██║   ███████╗
             ╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝
             ═══════════════════════════════════════════════════════════════════
        
        """)
        
        print("     Nr.  Produkt                             Artikel-Nr          Preis       Bestand   Feature             ")
        print("     ═══════════════════════════════════════════════════════════════════════════════════════════════════════")
        
        for (index,i) in produkteListe.enumerated() {
        
            if let iMac = i as? IMac { // (if i is IMac) liefert nur den Typ, kein Zugriff auf spezifische eigenschaften daher ( i as? IMac
                // Greift jetzt auf die eigenschaften des MacBooks zurück
            
                let index_ = String(index + 1).spaltenbreite(laenge: 5)
                let name_ = iMac.name.spaltenbreite(laenge: 35)
                let artikelNr_ = iMac.artikelNr.spaltenbreite(laenge: 20)
                let preis_ = String(iMac.preis).spaltenbreite(laenge: 12)
                let bestad_ = String(iMac.lagerbestand).spaltenbreite(laenge: 10)
                let feature_ = iMac.caseColor.spaltenbreite(laenge: 13)
                
                print("     \(index_)\(name_)\(artikelNr_)\(preis_)\(bestad_)Farbe: \(feature_)")
                
            }
            else if let macBookAir = i as? MacBookAir {
                
                let index_ = String(index + 1).spaltenbreite(laenge: 5)
                let name_ = macBookAir.name.spaltenbreite(laenge: 35)
                let artikelNr_ = macBookAir.artikelNr.spaltenbreite(laenge: 20)
                let preis_ = String(macBookAir.preis).spaltenbreite(laenge: 12)
                let bestad_ = String(macBookAir.lagerbestand).spaltenbreite(laenge: 10)
                let feature_ = macBookAir.prozessor.spaltenbreite(laenge: 13)
                
                print("     \(index_)\(name_)\(artikelNr_)\(preis_)\(bestad_)Prozessor: \(feature_)")
                
            }
            else if let iPhone = i as? IPhone {
                
                let index_ = String(index + 1).spaltenbreite(laenge: 5)
                let name_ = iPhone.name.spaltenbreite(laenge: 35)
                let artikelNr_ = iPhone.artikelNr.spaltenbreite(laenge: 20)
                let preis_ = String(iPhone.preis).spaltenbreite(laenge: 12)
                let bestad_ = String(iPhone.lagerbestand).spaltenbreite(laenge: 10)
                let feature_ = String(iPhone.speicher).spaltenbreite(laenge: 13)
                
                print("     \(index_)\(name_)\(artikelNr_)\(preis_)\(bestad_)Speicher (RAM): \(feature_)")
                
            }
        }
        print()
    }
    
    func beliebigetaste() {
        print("\t▶︎ Weiter mit beliebiger Taste...", terminator: " ")
        let _ = readLine()
    }
    
    func startShopping(aktiverKunde: Kunde) {
        
        print("""
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
            ╔════════════════════════════════════════════════════════════════════════════════════════╗
            ║  █████╗ ██████╗ ██████╗ ██╗     ███████╗    ███████╗████████╗ ██████╗ ██████╗ ███████╗ ║
            ║ ██╔══██╗██╔══██╗██╔══██╗██║     ██╔════╝    ██╔════╝╚══██╔══╝██╔═══██╗██╔══██╗██╔════╝ ║
            ║ ███████║██████╔╝██████╔╝██║     █████╗      ███████╗   ██║   ██║   ██║██████╔╝█████╗   ║
            ║ ██╔══██║██╔═══╝ ██╔═══╝ ██║     ██╔══╝      ╚════██║   ██║   ██║   ██║██╔══██╗██╔══╝   ║
            ║ ██║  ██║██║     ██║     ███████╗███████╗    ███████║   ██║   ╚██████╔╝██║  ██║███████╗ ║
            ║ ╚═╝  ╚═╝╚═╝     ╚═╝     ╚══════╝╚══════╝    ╚══════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝ ║
            ╚════════════════════════════════════════════════════════════════════════════════════════╝
                    ████████████████████████  WILLKOMMEN IM STORE  ███████████████████████████

        """)

        print("""

    Profil von \(aktiverKunde.name)
    ------------------------------------

    1) 🙍‍♂️ Kundenkonto anzeigen
    2) 🛍️ Produkte auswählen
    3) 🛒 Warenkorb anzeigen
    4) 💳 Bestellung abschließen

    5) 👋 Bestellvorgang abbrechen

""")
        print("\tViel Spaß beim Shoppen.\n\tTriff eine Auswahl ▶︎ ", terminator: " ")
        let usereingabe = readLine()!
        let auswahl = Int(usereingabe)
        
        switch auswahl {
            
        case 1: // Kundenkonto anzeigen
            
            status = ShopStatus.shopping
            
            print("""
    





















     █████╗  ██████╗ ██████╗ ██████╗ ██╗   ██╗███╗   ██╗████████╗
    ██╔══██╗██╔════╝██╔════╝██╔═══██╗██║   ██║████╗  ██║╚══██╔══╝
    ███████║██║     ██║     ██║   ██║██║   ██║██╔██╗ ██║   ██║
    ██╔══██║██║     ██║     ██║   ██║██║   ██║██║╚██╗██║   ██║
    ██║  ██║╚██████╗╚██████╗╚██████╔╝╚██████╔╝██║ ╚████║   ██║
    ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝   ╚═╝
    ═════════════════════════════════════════════════════════════

    🆔 KundenNr        \(aktiverKunde.kundenNr)
    🔑 Passwort        \(aktiverKunde.passwort)
    🙍‍♂️ Kunde           \(aktiverKunde.name)
    💰 Guthaben        \(aktiverKunde.kontostand) EUR
    🔸 Bonuspunkte     \(aktiverKunde.bonuspunkte)

    Dein Bonuskonto entspricht aktuell
    einem Wert von: \(aktiverKunde.bonuspunkte / 1000) EUR

""")
            beliebigetaste()
            startShopping(aktiverKunde: aktiverKunde)
            
            
        case 2: // Produktauswahl
            
            status = ShopStatus.shopping
            
            let maxIndex = produkteListe.count
            var mengeAuswahl: Int = 0
            var betragBonuspunkte: Double = 0.0
            
            repeat {
                
                produkteAnzeigen()
                
                print()
                print("\t🔍 Wähle zwischen \(produkteListe.startIndex + 1) und \(produkteListe.endIndex) aus dem Sortiment.")
                print("\t❓ Triff eine Auswahl oder mit <ENTER> zum Menü: ", terminator: "")
                
                if let kundenauswahl = Int(readLine()!) {
                    
                    if kundenauswahl <= maxIndex {
                        
                        let kundenauswahlProdukt = produkteListe[kundenauswahl - 1]
                        
                        betragBonuspunkte = kundenauswahlProdukt.preis
                        
                        if kundenauswahlProdukt.lagerbestand >= 1 {
                            
                            print("\t🙂 Super, du hast dich für ein \(kundenauswahlProdukt.name.split(separator: " ")[1]) entschieden.")
                            kundenauswahlProdukt.anzeigen()
                            
                            print("\t🤷‍♂️ Möchtest du mehr als ein Gerät kaufen? (j/n): ", terminator: " ")
                            let auswahl = readLine()!
                            
                            switch auswahl {
                                
                            case "j":
                                
                                print("\t❓ Wieviele möchtest du kaufen: ", terminator: " ")
                                
                                guard let mengeAuswahl = Int(readLine()!), !auswahl.isEmpty else {
                                    print("\t❌ Du musst eine gültige Auswahl treffen!")
                                    sleep(2)
                                    
                                    continue
                                }
                                //mengeAuswahl = Int(readLine()!)!
                                
                                if mengeAuswahl > 0 {
                                    
                                    if mengeAuswahl < kundenauswahlProdukt.lagerbestand {
                                        
                                        print("\t🛍️ \(mengeAuswahl) Stk. wurden dem Warenkorb hinzugefügt!")
                                        kundenauswahlProdukt.reduziereLagerbestand(bestand: mengeAuswahl)
                                        aktiverKunde.warenkorb.hinzufuegen(artikelNr: kundenauswahlProdukt.artikelNr, mengeNeu: mengeAuswahl)
                                        aktiverKunde.bonuspunkteAktualisieren(betrag: betragBonuspunkte * Double(mengeAuswahl))
                                        
                                        beliebigetaste()
                                        
                                    } else {
                                        
                                        print("\t⭕️ Leider ist unser Lagerbestnd zu gering.")
                                        print("\t🛍️ Es wurden dir nur \(kundenauswahlProdukt.lagerbestand) Stk in den Warenkorb gelegt!")
                                        
                                        aktiverKunde.warenkorb.hinzufuegen(artikelNr: kundenauswahlProdukt.artikelNr, mengeNeu: kundenauswahlProdukt.lagerbestand)
                                        kundenauswahlProdukt.reduziereLagerbestand(bestand: kundenauswahlProdukt.lagerbestand)
                                        aktiverKunde.bonuspunkteAktualisieren(betrag: betragBonuspunkte)
                                        beliebigetaste()
                                    }
                                    
                                } else {
                                    print("\t❌ Du musst eine gültige Auswahl treffen!")
                                    print("\t⌛️ Die Artikelübersicht wird dir wieder angezeigt! \n")
                                    sleep(3)
                                    break
                                }
                                
                            case "n":
                                print()
                                print("\t👍 Dein Produkt wurde 1x dem Warenkorb hinzugefügt!")
                                aktiverKunde.warenkorb.hinzufuegen(artikelNr: kundenauswahlProdukt.artikelNr, mengeNeu: 1)
                                kundenauswahlProdukt.reduziereLagerbestand(bestand: 1)

                                aktiverKunde.bonuspunkteAktualisieren(betrag: betragBonuspunkte)
                                beliebigetaste()
                                
                                
                            default:
                                break
                            }
                            
                            
                            
                        } else {
                            print("\tLeider ist dieses Modell nicht mehr an Lager. Aktueller Lagerbestand: \(kundenauswahlProdukt.lagerbestand) Stück")
                            print("\tDie Artikelübersicht wird dir gleich wieder angezeigt! \n")
                            sleep(3)
                        }
                        
                        
                        
                    } else {
                        print("\tLeider war deine Eingabe fehlerhaft. Wähle erneut aus!")
                        print("\tDie Artikelübersicht wird dir gleich wieder angezeigt! \n")
                        sleep(3)
                        
                    }
                    
                } else {
                    print("\t👍 Es geht zurück ins Hauptmenü!")
                    sleep(2)
                    startShopping(aktiverKunde: aktiverKunde)
                }
                
                
            } while true
            
            
            
        case 3:
            
            status = ShopStatus.bestellbestaetigung
            
            aktiverKunde.warenkorb.anzeigen(aktiverKunde: aktiverKunde)
            print()
            beliebigetaste()
            startShopping(aktiverKunde: aktiverKunde)
            
        case 4:
            
            status = ShopStatus.bestellabschluss
            
            Thread.exit()
            
        case 5:
            print("\n\t>>> Vielen Dank für deinen Besuch. Bis Bald 🙋‍♂️")
            sleep(2)
            Thread.exit()
            // Bestellung abbrechen
        
            
        default:
            print("\t❌ Du musst eine gültige Auswahl treffen!")
            sleep(2)
            startShopping(aktiverKunde: aktiverKunde)
            
        }
        
    }
    
    
}

