puts "Creating networks"
n1 = Network.create(call_letters: "ABC", channel: 7)
n2 = Network.create(call_letters: "NBC", channel: 4)
n3 = Network.create(call_letters: "CBS", channel: 5)
n4 = Network.create(call_letters: "Disney", channel: 29)

puts "Creating actors"
a1 = Actor.create(first_name: "Matt", last_name: "Damon")
a2 = Actor.create(first_name: "Mark", last_name: "Wahlberg")
a3 = Actor.create(first_name: "Jennifer", last_name: "Lawrence")
a4 = Actor.create(first_name: "Anne", last_name: "Hathaway")

puts "Creating shows"
s1 = Show.create(name: "The Office", day: "Tuesday", season: "4", genre: "Comedy", network_id: n1.id)
s2 = Show.create(name: "Friends", day: "Monday", season: "1", genre: "Comedy", network_id: n2.id)
s3 = Show.create(name: "Grey's Anatomy", day: "Thursday", season: "15", genre: "Drama", network_id: n3.id)
s4 = Show.create(name: "Lost", day: "Friday", season: "4", genre: "Thriller", network_id: n4.id)

puts "Creating characters"
c1 = Character.create(name: "Michael Scott", actor_id: a1.id, show_id: s1.id, catchphrase: "That's what she said")
c1 = Character.create(name: "Jim Halpert", actor_id: a2.id, show_id: s1.id, catchphrase: "ham & cheese sandwich")
c2 = Character.create(name: "Monica", actor_id: a2.id, show_id: s2.id, catchphrase: "I know")
c3 = Character.create(name: "Meredith Grey", actor_id: a3.id, show_id: s3.id, catchphrase: "Whatever I want")
c4 = Character.create(name: "Charlie", actor_id: a4.id, show_id: s4.id, catchphrase: "Oh bloody hell")