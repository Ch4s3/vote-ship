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

person1 = Person.create(name: "Sal", project: p1)
person2 = Person.create(name: "Paris", project: p1)
person3 = Person.create(name: "Chris", project: p1)

person4 = Person.create(name: "Brigette", project: p2)
person5 = Person.create(name: "Chase", project: p2)
person6 = Person.create(name: "Collins", project: p2)

person7 = Person.create(name: "Shea", project: p3)
person8 = Person.create(name: "Sarah", project: p3)
