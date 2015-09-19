# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Contest.create(name: "test", date: Date.today)
date = Date.parse("Sat, 19 Sep 2015")
c = Contest.create(name: "4th Annual Baltimore Hackathon", date: date, active: true)
p1 = Project.create(name: "unicorn helmet", contest: c)
p2 = Project.create(name: "bat signal", contest: c)
p3 = Project.create(name: "rain bucket", contest: c)

person1 = Person.new(name: "Sal", project: p1)
person2 = Person.new(name: "Paris", project: p1)
person3 = Person.new(name: "Chris", project: p1)

person4 = Person.new(name: "Brigette", project: p2)
person5 = Person.new(name: "Chase", project: p2)
person6 = Person.new(name: "Collins", project: p2)

person7 = Person.new(name: "Shea", project: p3)
person8 = Person.new(name: "Sarah", project: p3)
