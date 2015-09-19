# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Contest.create(name: "test", date: Date.today)
date = Date.parse("Sat, 19 Sep 2015")
Contest.create(name: "4th Annual Baltimore Hackathon", date: date)
