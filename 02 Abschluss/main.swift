import Foundation

var aktiverKunde = shop_1.kunden.randomElement()
var shopStatus = ShopStatus.shopping

print("Herzlich Willkommen in deinem AppleStore \n")
print("Hallo \(aktiverKunde!.name), viel Spaß beim Shoppen.")

shop_1.menueAnzeigen()
