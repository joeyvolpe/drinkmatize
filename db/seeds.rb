# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Drink.destroy_all
User.destroy_all
Spirit.destroy_all




joey = User.create(name: "Joey", email: "joey@example.com", password_digest: "password")

conrad = User.create(name: "Conrad", email: "conrad@example.com", password_digest: "password")

shawn = User.create(name: "shawn", email: "shawn@example.com", password_digest: "password")



vodka = Spirit.create(name: "vodka")

gin = Spirit.create(name: "gin")

tequila_blanco = Spirit.create(name: "tequila blanco")

tequila_reposado = Spirit.create(name: "tequila reposado")

tequila_anejo = Spirit.create(name: "tequila anejo")

light_rum = Spirit.create(name: "light rum")

dark_rum = Spirit.create(name: "dark rum")

rye_whiskey = Spirit.create(name: "rye whiskey")

bourbon_whiskey = Spirit.create(name: "bourbon whiskey")

scotch_whiskey = Spirit.create(name: "scotch whiskey")

cointreau = Spirit.create(name: "cointreau")

mezcal = Spirit.create(name: "mezcal")

vermouth = Spirit.create(name: "vermouth")



first_drink = joey.drinks.new(name: "Chocolate Avalanch", glassware: "highball", price: 10, season: "winter", recipe: "Fettercairn rose kennedy cocktail, benrinnes remy martin bellini, ginza mary lime rickey, speyside toro rojo. Caipirinha, savoy affair fettercairn painkiller staten island ferry longmorn zurracapote, polmos krakow black cossack monte alban! Finlandia chicago cocktail longmorn presbyterian old etonian black russian polish martini, gordon's irish coffee, dalmore, glenlossie, sea breeze. Pimm's cup, old crow bailey's irish cream tom collins chartreuse flirtini, pappy van winkle. Zombie alexander staten island ferry panama polish martini glen scotia jim beam black & white. Glenkinchie johnny walker red chicago cocktail knockdhu cardhu; lynchburg lemonade agent orange myers. Orgasm singapore sling hiram walker hanky-panky macduff dufftown jack and coke usher's; heart of fire old mr. boston.")

first_drink.spirits << vodka
first_drink.save

second_drink = shawn.drinks.new(name: "Cherry Upchuck", glassware: "martini", price: 11, season: "fall", recipe: "Fettercairn rose kennedy cocktail, benrinnes remy martin bellini, ginza mary lime rickey, speyside toro rojo. Caipirinha, savoy affair fettercairn painkiller staten island ferry longmorn zurracapote, polmos krakow black cossack monte alban! Finlandia chicago cocktail longmorn presbyterian old etonian black russian polish martini, gordon's irish coffee, dalmore, glenlossie, sea breeze. Pimm's cup, old crow bailey's irish cream tom collins chartreuse flirtini, pappy van winkle. Zombie alexander staten island ferry panama polish martini glen scotia jim beam black & white. Glenkinchie johnny walker red chicago cocktail knockdhu cardhu; lynchburg lemonade agent orange myers. Orgasm singapore sling hiram walker hanky-panky macduff dufftown jack and coke usher's; heart of fire old mr. boston.")

second_drink.spirits << gin
second_drink.save

third_drink = conrad.drinks.new(name: "Old-Fashioned Blob", glassware: "rocks", price: 13, user_id: 3, season: "spring", recipe: "Fettercairn rose kennedy cocktail, benrinnes remy martin bellini, ginza mary lime rickey, speyside toro rojo. Caipirinha, savoy affair fettercairn painkiller staten island ferry longmorn zurracapote, polmos krakow black cossack monte alban! Finlandia chicago cocktail longmorn presbyterian old etonian black russian polish martini, gordon's irish coffee, dalmore, glenlossie, sea breeze. Pimm's cup, old crow bailey's irish cream tom collins chartreuse flirtini, pappy van winkle. Zombie alexander staten island ferry panama polish martini glen scotia jim beam black & white. Glenkinchie johnny walker red chicago cocktail knockdhu cardhu; lynchburg lemonade agent orange myers. Orgasm singapore sling hiram walker hanky-panky macduff dufftown jack and coke usher's; heart of fire old mr. boston.")

third_drink.spirits << rye_whiskey
third_drink.save






