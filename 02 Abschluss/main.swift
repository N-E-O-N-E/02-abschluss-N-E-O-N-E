import Foundation

print("Herzlich Willkommen in deinem AppleStore \n")

var aktiverKunde = shop_1.kunden.randomElement()
print("Hallo \(aktiverKunde!.name), viel Spaß beim Shoppen.")
var shopStatus = ShopStatus.shopping

shop_1.menueAnzeigen()

