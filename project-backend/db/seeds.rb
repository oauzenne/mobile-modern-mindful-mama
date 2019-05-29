# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Mother.destroy_all
Baby.destroy_all
Milking.destroy_all
Location.destroy_all
Product.destroy_all
CommonProb.destroy_all

olivia = Mother.create(name: "Olivia", email: "oauzenne@gmail.com", password: "password123", image: "https://scontent-dfw5-1.xx.fbcdn.net/v/t1.0-9/54799731_2573924576012524_3805846949928632320_o.jpg?_nc_cat=101&_nc_oc=AQlhGEwkXTZsIokwb2AZFlSaW06SXQNbo1D1RUKjyO_t4nBFv0RoCymHzKBcb2ZmJHY&_nc_ht=scontent-dfw5-1.xx&oh=c5695494cd1e29f733cea3d7a99b2663&oe=5D745D69" )

marley = Baby.create(name: "Marley", mother: olivia, photo: "https://scontent-dfw5-1.xx.fbcdn.net/v/t1.0-9/56575967_2611266608944987_6784832186215301120_o.jpg?_nc_cat=110&_nc_oc=AQk5Ys6WIEyRf5xDNehQEUhqBZoLgY_hVXh_AV2SUrW6rIXRJAYC50S8CEN6zEi2a0M&_nc_ht=scontent-dfw5-1.xx&oh=1f619b149caf99fc4100494ac03bd42d&oe=5D781EEE")

mar_one_nine_am = Milking.create(date: "March 1, 2019", mother: olivia, time: "9:00am", ounces: "8oz")

galleria_mall = Location.create(name: "Galleria Mall", where: "Galleria", photo: "")
