import Foundation

class Kunde: Kundendaten {
    
    var kundenNr: String
    let name: String
    var passwort: String
    var kontostand: Double {
        didSet {
            for _ in 1...4 {
                print("\t💰", terminator: " ")
                Thread.sleep(forTimeInterval: 0.4)
            }
            print()
            print("\t💰 Via \(zahlungsart) wurden dir \(oldValue - kontostand) € berechnet! <<<\n")
            sleep(1)
        }
    }
    var bonuspunkte: Int {
        didSet {
            for _ in 1...4 {
                print("\t🔸", terminator: " ")
                Thread.sleep(forTimeInterval: 0.4)
            }
            print()
            print("\t🔸 Deine Bonuspounkte wurden aktualisiert! <<<")
            print("\t   Bonuspunkte: \(bonuspunkte - oldValue)\n")
            sleep(1)
        }
    }
    var warenkorb: Warenkorb {
        didSet {
            if warenkorb.produkte.isEmpty {
                print("\t🛍️ Warenkorb enthält keine Artikel mehr!\n")
            } else {
                for _ in 1...4 {
                    print("\t🛍️", terminator: " ")
                    Thread.sleep(forTimeInterval: 0.4)
                }
                print()
                print("\t🛍️ Warenkorb wurde aktualisiert!\n")
                sleep(1)
            }
        }
    }
    var zahlungsart: Zahlungsmethode
    
    init(kundenNr: String, name: String, passwort: String) {
        self.kundenNr = kundenNr
        self.name = name
        self.passwort = passwort
        self.kontostand = Double.random(in: 1800...3600)
        self.bonuspunkte = Int.random(in: 95000...210000)
        self.warenkorb = Warenkorb()
        self.zahlungsart = .Rechnung
        
    }
    
    func kundeHinzufuegen(neuerKunde: Kunde) {
        kundenListe.append(neuerKunde)
        print("\n\t👍 Super, deine KundenNr. ist: \(neuerKunde.kundenNr). Viel Spaß!")
        sleep(2)
    }
    
    func kontostandReduzieren(betrag: Double) {
        kontostand -= betrag
    }
    
    func bonuspunkteAktualisieren(betrag: Double) {
        bonuspunkte += Int(betrag * 15)
    }
    
    func bonuspunkteReduzieren(punkte: Int) {
        bonuspunkte -= punkte
    }
    
    func zahlungsmethodeAendern() {
        print("\t💶 Deine standardmäßige Zahlungsmethode ist \(zahlungsart).")
        print("\t Möchtest du deine Zahlungsmethode ändern? (j/n) ▶︎ ", terminator: "")
        
        var auswahl = readLine()!.lowercased()
        
        if auswahl == "j" {
            print("\tSuper, wie möchtest du zukünftig zahlen: ")
            
            print("""

            (R)echnung
            (K)reditkarte
            (P)ayPal

""")
            print("\tTriff eine Auswahl ▶︎ ", terminator: "")
            auswahl = readLine()!.lowercased()
            
            if auswahl == "r" {
                zahlungsart = .Rechnung
                print("\t💶 Deine neue Zahlungsmethode ist \(zahlungsart).")
            } else if auswahl == "k" {
                zahlungsart = .Kreditkarte
                print("\t💶 Deine neue Zahlungsmethode ist \(zahlungsart).")
            } else if auswahl == "p" {
                zahlungsart = .PayPal
                print("\t💶 Deine neue Zahlungsmethode ist \(zahlungsart).")
            } else {
                print("\tEs wird deine hinterlegte Zahlungsmethode verwendet!")
            }
            
        } else if auswahl == "n" {
            print("\tEs wird deine hinterlegte Zahlungsmethode verwendet!")
        } else {
            print("\tDu hast keine Gültige Auswahl getroffen.")
            print("\tEs wird deine hinterlegte Zahlungsmethode verwendet!")
        }
    }
}
