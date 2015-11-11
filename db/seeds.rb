# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



20.times do
    Model.create(
        name: "Ashley Cross",
        portfolio_image: "/uploads/models/Addison%20Avery/portfolio_image/Addison_Avery_Proofile.jpg",
        favorite_position: "",
        birthdate: "",
        astrology: "",
        birth_place: "",
        nationality: "",
        hair_color: "",
        measurements: "",
        height: "",
        tattoos: "",
        pierciings: ""
    )
end