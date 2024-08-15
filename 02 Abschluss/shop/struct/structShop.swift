//
//  classShop.swift
//  02 Abschluss
//
//  Created by Markus Wirtz on 12.08.24.
//

import Foundation

struct Shop {
    
    let produkte: [Produkt]
    var kunden: [Kunde]
    let tagesDeals: [Double]
    
    var status: ShopStatus {
        didSet {
            if status == .bestellbestaetigung  {
                print()
                print("\tDein Warenkorb wird geladen!\n")
                for _ in 1...4 {
                    print("\t🛍️", terminator: " ")
                    Thread.sleep(forTimeInterval: 0.4)
                }
            } else if status == .bestellabschluss{
                print()
                print("\tDer Zahlungsprozess wird geladen!\n")
                for _ in 1...4 {
                    print("\t💰", terminator: " ")
                    Thread.sleep(forTimeInterval: 0.4)
                }
            } else if status == .shopping{
                print()
                print("\tDaten werden geladen...\n")
                for _ in 1...4 {
                    print("\t🔍", terminator: " ")
                    Thread.sleep(forTimeInterval: 0.4)
                }
            }
        }
    }
    
    init(produkte: [Produkt], kunden: [Kunde], status: ShopStatus) {
        self.produkte = produkte
        self.kunden = kunden
        self.tagesDeals = [0.5, 0.10, 0.15, 0.20, 0.25]
        self.status = status
    }
    
    func beliebigetaste() {
        print("\t▶︎ Weiter mit beliebiger Taste...", terminator: " ")
        let _ = readLine()
        
    }
    
    mutating func kundeHinzufuegen(to array: inout [Kunde], neuerKunde: Kunde) {
        
        array.append(neuerKunde)
        print("\n\t👍 Kunde hinzugefügt!")
        sleep(1)
    }
    
    mutating func startShopping(aktiverKunde: Kunde) {
        
        let randDeal = tagesDeals.randomElement()!
        
        print("""

\tAktuell im Shop registrierte Kunden: \n
""")
        for kunden in kundenListe {
            print("\t\(kunden.kundenNr)")
        }
        
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

    Kundenprofil von \(aktiverKunde.name)
    ------------------------------------

    1) 🙍‍♂️ Kundenkonto
    2) 🛍️ Produkte
    3) 🛒 Warenkorb
    4) 💳 Zahlung
    5) 👋 Abmelden
    6) 🚪 Beenden

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
    💰 Guthaben        \(aktiverKunde.kontostand.formatierterPreis) EUR
    🔸 Bonuspunkte     \(aktiverKunde.bonuspunkte)

    Dein Bonuskonto entspricht aktuell
    einem Wert von: \(aktiverKunde.bonuspunkte / 1000) EUR

""")
        beliebigetaste()
        startShopping(aktiverKunde: aktiverKunde)
            
        case 2: // Produktauswahl
            
            status = ShopStatus.shopping
            
            let maxIndex = produkteListe.count
            //var mengeAuswahl: Int = 0
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
                                        aktiverKunde.bonuspunkteAktualisieren(betrag: betragBonuspunkte * Double(mengeAuswahl))
                                        beliebigetaste()
                                    }
                                    
                                } else {
                                    print("\t❌ Du musst eine gültige Auswahl treffen!")
                                    print("\t⌛️ Die Artikelübersicht wird dir wieder angezeigt! \n")
                                    sleep(2)
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
                            sleep(2)
                        }
                        
                    } else {
                        print("\tLeider war deine Eingabe fehlerhaft. Wähle erneut aus!")
                        print("\tDie Artikelübersicht wird dir gleich wieder angezeigt! \n")
                        sleep(2)
                        
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
            
            print("""
        

























     ██████╗██╗  ██╗███████╗ ██████╗██╗  ██╗ ██████╗ ██╗   ██╗████████╗
    ██╔════╝██║  ██║██╔════╝██╔════╝██║ ██╔╝██╔═══██╗██║   ██║╚══██╔══╝
    ██║     ███████║█████╗  ██║     █████╔╝ ██║   ██║██║   ██║   ██║
    ██║     ██╔══██║██╔══╝  ██║     ██╔═██╗ ██║   ██║██║   ██║   ██║
    ╚██████╗██║  ██║███████╗╚██████╗██║  ██╗╚██████╔╝╚██████╔╝   ██║
    ╚═════╝╚═╝  ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝    ╚═╝
    ══════════════════════════════════════════════════════════════════

""")
        var gesamtpreis = aktiverKunde.warenkorb.gesamtpreis(liste: produkteListe)
        let bonuspunkteBetrag = aktiverKunde.bonuspunkte / 1000
            
        if gesamtpreis > 0 {
            
            print("\tHallo \(aktiverKunde.name), Hier findest du eine kurze Übersicht.\n")
            print("\tMenge\tArtikelname")
            print("\t-----------------------------------------")
            
            for (artikelNr, menge) in aktiverKunde.warenkorb.produkte {
                let produktMatch = aktiverKunde.warenkorb.findeArtikel(liste: produkteListe, artikelnummer: artikelNr )
                print("\t\(menge)\t\t\(produktMatch!.name)")
                
            }
           
            print()
            print("\tWarenkorb Gesamtwert: \(gesamtpreis.formatierterPreis) €")
            print("\tAktuelle Bonuspunkte: \(aktiverKunde.bonuspunkte) (\(bonuspunkteBetrag) €)\n")
            
            let auswahlGeschenk = aktiverKunde.warenkorb.geschenkOption(warenkorbWert: gesamtpreis)
            if let geschenk = auswahlGeschenk {
                aktiverKunde.warenkorb.geschenkHinzu(neuesGeschenk: geschenk)
            }
            
            let rabattPruefen = aktiverKunde.warenkorb.berechneRabatt(rabatt: randDeal, preis: gesamtpreis)
            print("\t🔥 BlackWeek! Heute ist alles \(randDeal*100)% reduziert!")
            print("\t🔥 Heute zahlst du statt \(gesamtpreis.formatierterPreis) € nur \(rabattPruefen.formatierterPreis) €")
            
            gesamtpreis = rabattPruefen
            
            beliebigetaste()
            startShopping(aktiverKunde: aktiverKunde)
            
        } else {
            print("\t🔴 Du hast keine Artikel im Warenkorb!\n")
            beliebigetaste()
            startShopping(aktiverKunde: aktiverKunde)
        }
            
        case 5:

            break
            
        case 6:
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
}
