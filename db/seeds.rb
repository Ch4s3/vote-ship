# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Contest.find_or_create_by!(name: "test", date: Date.today)
date = Date.parse("Sat, 19 Sep 2015")
c = Contest.find_or_create_by!(name: "4th Annual Baltimore Hackathon", date: date, active: true)
p1 = Project.find_or_create_by!(name: "unicorn helmet", contest: c, vote_count: 0, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nulla nisl, consectetur ac justo eget, interdum vestibulum neque. Morbi euismod ornare odio nec dignissim. Duis elementum mollis massa eget mattis. Donec rutrum, orci sagittis aliquam dictum, odio risus vestibulum erat, id lacinia eros sapien ut tellus. Nunc in metus quis est vestibulum lacinia. Praesent porta, libero sed placerat porta, massa justo facilisis justo, sed dictum tortor lorem vitae ex. Duis ut nulla et diam finibus porta. Pellentesque eget porttitor nulla. Vestibulum eu vehicula diam. Nullam sit amet tristique arcu, quis ullamcorper mauris.", url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSPsN7mKUGmsoGxPbexw2XmxurbhSuqEOOBSdGea-lj2xyS2ZHBwg")
p2 = Project.find_or_create_by!(name: "bat signal", contest: c, vote_count: 0, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nulla nisl, consectetur ac justo eget, interdum vestibulum neque. Morbi euismod ornare odio nec dignissim. Duis elementum mollis massa eget mattis. Donec rutrum, orci sagittis aliquam dictum, odio risus vestibulum erat, id lacinia eros sapien ut tellus. Nunc in metus quis est vestibulum lacinia. Praesent porta, libero sed placerat porta, massa justo facilisis justo, sed dictum tortor lorem vitae ex. Duis ut nulla et diam finibus porta. Pellentesque eget porttitor nulla. Vestibulum eu vehicula diam. Nullam sit amet tristique arcu, quis ullamcorper mauris.", url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSPsN7mKUGmsoGxPbexw2XmxurbhSuqEOOBSdGea-lj2xyS2ZHBwg")
p3 = Project.find_or_create_by!(name: "rain bucket", contest: c, vote_count: 0, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nulla nisl, consectetur ac justo eget, interdum vestibulum neque. Morbi euismod ornare odio nec dignissim. Duis elementum mollis massa eget mattis. Donec rutrum, orci sagittis aliquam dictum, odio risus vestibulum erat, id lacinia eros sapien ut tellus. Nunc in metus quis est vestibulum lacinia. Praesent porta, libero sed placerat porta, massa justo facilisis justo, sed dictum tortor lorem vitae ex. Duis ut nulla et diam finibus porta. Pellentesque eget porttitor nulla. Vestibulum eu vehicula diam. Nullam sit amet tristique arcu, quis ullamcorper mauris.", url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSPsN7mKUGmsoGxPbexw2XmxurbhSuqEOOBSdGea-lj2xyS2ZHBwg")

person1 = Person.find_or_create_by!(name: "Sal", project: p1)
person2 = Person.find_or_create_by!(name: "Paris", project: p1)
person3 = Person.find_or_create_by!(name: "Chris", project: p1)

person4 = Person.find_or_create_by!(name: "Brigette", project: p2)
person5 = Person.find_or_create_by!(name: "Chase", project: p2)
person6 = Person.find_or_create_by!(name: "Collins", project: p2)

person7 = Person.find_or_create_by!(name: "Shea", project: p3)
person8 = Person.find_or_create_by!(name: "Sarah", project: p3)
