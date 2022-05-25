# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Booking.destroy_all
Event.destroy_all
User.destroy_all


puts "Creating events..."
e1 = Event.create(name: "Tech Happy Hour" , venue: "230 Fifth Rooftop Bar", location: "New York, New York", description: "A great happy hour for tech professionals or just tech enthusiasts. Take the time to wind down and network with people of the same feather!" , attendance: 20 , price: 20 , likes: 12, image:"https://i1.wp.com/haileysharpandpub.com/wp-content/uploads/2022/04/AdobeStock_486693911-scaled.jpeg?resize=2000%2C1200&ssl=1", category: "Professional")
e2 = Event.create(name: "Uptown Night Market " , venue: "Harlem", location: "Uptown New York", description: "Manhattan's largest, most celebrated foodie series is up here, right in Harlem, USA. 50+ eclectic vendors representing the city's best culinary, packaged goods, and arts & crafts offerings!" , attendance: 290, price: 20 , likes: 6, image:"https://westharlemdc.org/wp-content/uploads/2022/01/Uptown-Night-Market-Opening-Day-800x533.jpg" , category: "Outdoor")
e3 = Event.create(name: "International Auto Show" , venue: "Javits Center", location: "New York, New York", description: "New and exciting exhibits will be showcased with the very best that the automobile industry has to offer in an exciting and unique way." , attendance: 50 , price: 20 , likes: 7, image:"https://a57.foxnews.com/static.foxnews.com/foxnews.com/content/uploads/2021/08/640/320/auto-show.jpg?ve=1&tl=1"  , category: "Miscellaneous" )
e4 = Event.create(name: "Sunday Stand-Up Comedy" , venue: "BKLYN Comedy Club", location: "Brooklyn, New York", description: "Located on South 1st in the heart of Williamsburg off Bedford Avenue. We feature the best comics in NYC performing in Williamsburg Brooklyn." , attendance: 25 , price: 30 , likes: 9, image:"https://www.standupny.com/wp-content/uploads/2020/11/2J0A8305.jpg" , category: "Miscellaneous")
e5 = Event.create(name: "Reggae Versus Soca Fest" , venue: "Lot 45 ", location: "Brooklyn, New York", description: "Come and enjoy a night of amazing music and great vibes as we explore the genre of Soca and Reggae and how they can come together to create nothing but awesome times!" , attendance: 84, price: 20 , likes: 30 , image:"https://i.ytimg.com/vi/XTFlFSZoL18/maxresdefault.jpg"  , category: "Party")
e6 = Event.create(name: "Racial Equity Workshop" , venue: "Virtual", location: "Online", description: "Join this talk on racial equality in the workplace and how these coomon courtesies can make our friends in the workplace feel united. " , attendance: 34, price: 0 , likes: 13 , image:"https://cached.imagescaler.hbpl.co.uk/resize/scaleWidth/620/cached.offlinehbpl.hbpl.co.uk/news/OMP/diverse-group-graphic_tcm27-90762.jpg" , category: "Professional")
e7 = Event.create(name: "Black In Tech: Networking" , venue: "Virtual", location: "Online", description: "A network event for black tech professionals and allies in the industry. Participate in talks of career advancement/development, personal accolades and more!" , attendance: 50 , price: 15 , likes: 10 , image:"https://peopleofcolorintech.com/wp-content/uploads/2021/11/lagos-techie-IgUR1iX0mqM-unsplash-1-1080x635.jpg" , category: "Professional")
e8 = Event.create(name: "Mother's Day Pamper Date" , venue: "Ascend Wellness & Medical Spa", location: "Kew Gardens, New York", description: "We can think of no better gift for today/s busy moms than a respite from the everyday hustle and bustle. And there is no better destination for this escape than the Spa at Ascend Wellness Centre.
With a world-class spa, fine dining, elegant rooms & tranquil ambiance, the Spa at AW puts a premium on pampering." , attendance: 10 , price: 350 , likes: 6 , image:"https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/mothers-day-spa-specials-1650572475.jpg" , category: "Miscellaneous")

e9 = Event.create(name: "The Yankees vs The Astros" , venue: "Yankee Stadium", location: "Bronx, New York", description: "Watch the Yankees take on the Texas Astros this season!" , attendance: 3676  , price: 65 , likes: 304, image:"https://sportshub.cbsistatic.com/i/r/2022/04/19/2133bb51-f9d7-483e-9bf7-057be79d3f0d/thumbnail/1200x675/60a81cb9104b0a01153c3dc96c017b6a/aaronjudge-g.jpg", category: "Sports")
e10 = Event.create(name: "Money Heist Pop-Up" , venue: "1 Hanson PI, Brooklyn", location: "Brooklyn, New York", description: "Money Heist: The Experience is a first-person immersive heist on an huge scale. It boasts a large production & a multitude of surprises. In this new adventure, you will take part in a heist on one of the most emblematic locations in NYC. So join us, put on the mask and get ready! The gang needs you..." , attendance: 200 , price: 40 , likes: 98, image:"https://thepointsguy.global.ssl.fastly.net/us/originals/2022/01/20220125_Money-Heist_MBlancaflor-4.jpg", category: "Miscellaneous")
e11 = Event.create(name: "Kate Spade Pop-Up" , venue: "Spring Street", location: "SoHo, New York", description: "A pop up with the latest in exclusive accessories and merchandise from designer label Kate Spade. Enjoy complimentary refreshments." , attendance: 209 , price: 50, likes: 48, image:"https://d2eohwa6gpdg50.cloudfront.net/wp-content/uploads/2019/03/12153205/KS-Pop-Up-Ion-7797_v1.jpg" ,  category: "Fashion")
e12 = Event.create(name: "The Knicks vs The Celtics" , venue: "Madison Square Garden", location: "New York, New York", description: "Witness an awesome game between two rival basketball teams play at the world's most famous arena!" , attendance: 8908 , price: 75 , likes: 702, image:"https://images2.minutemediacdn.com/image/fetch/c_fill,g_auto,f_auto,h_2130,w_3200/https%3A%2F%2Fdailyknicks.com%2Fwp-content%2Fuploads%2Fgetty-images%2F2017%2F07%2F1179394500.jpeg" , category: "Sports")


puts "Creating users..."

u1 = User.create(full_name: "Robbin Miller", email: "rm@gmail.com" , username: "robbytobby" , phone_number: "123-455-234" , password: "password")
u2 = User.create(full_name: "Justin Cobb", email: "justinc@yahoo.com" ,  username: "justincee", phone_number: "967-947-2635", password: "password")
u3 = User.create(full_name: "Chris Hitt", email: "chrishitt12@hotmail.com",  username: "anotherchris" , phone_number: "347-608-2937", password: "password")
u4 = User.create(full_name: "Rehna Scwhatsky", email: "rehnas@gmail.com" ,  username: "swotteam" , phone_number: "914-846-3765", password: "password")
u5 = User.create(full_name: "Timber Care", email: "carebear@gmail.com",  username: "carebear", phone_number: "212-647-9851", password: "password")
u6 = User.create(full_name: "Jen Scott", email: "jenscott@hotmail.com",  username: "jenscott", phone_number: "789-394-6975", password: "password")
u7 = User.create(full_name: "Bobbie Harry", email: "bobbieharry56@yahoo.com",  username: "harrystyles", phone_number: "236-047-3648", password: "password")
u8 = User.create(full_name: "Reha bronsky", email: "bronksyreha@gmail.com",  username: "rehabron", phone_number: "937-474-4729", password: "password")


puts "Seeding bookings..."
Booking.create(event_id: e1.id, user_id: u8.id, date_time: "12")
Booking.create(event_id: e2.id, user_id: u8.id, date_time: "19")
Booking.create(event_id: e3.id, user_id: u3.id, date_time: "20")
Booking.create(event_id: e4.id, user_id: u4.id, date_time: "18")
Booking.create(event_id: e9.id, user_id: u6.id, date_time: "16")
Booking.create(event_id: e3.id, user_id: u4.id, date_time: "10")
Booking.create(event_id: e7.id, user_id: u1.id, date_time: "11")
Booking.create(event_id: e10.id, user_id: u1.id, date_time: "9")

puts "Seeding done!"
