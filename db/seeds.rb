require 'json'
require 'open-uri'

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Flat.destroy_all
puts "OK"

#Generating database
img_flat1 = "https://movaway.fr/wp-content/uploads/2020/05/201fb78cee0930e307dc7d006f93611d.jpg"
img_flat2 = "https://images.squarespace-cdn.com/content/v1/6001ce695a503d6d70ef3775/ba8d2022-269d-4fa6-8308-b5ba9c8c70d0/paris-tour-eiffel.jpg"
img_flat3 = "https://media-cdn.tripadvisor.com/media/photo-s/21/df/df/1d/grand-view-wohnraum.jpg"
img_flat4 = "https://www.legendaer-zermatt.com/images/2019/02/12/legendar-zermatt_appartement-15_-der-schatz-auf-schwarzsee_03_1200px.jpg"
img_flat5 = "https://q-xx.bstatic.com/xdata/images/hotel/max500/530014774.jpg?k=de556b92dcb4487da3f55eb9b95b544994caa0bd5c5b7fc0b5b6f74a51c9d83d&o="
img_flat6 = "https://realty-luxe.com/wp-content/uploads/2019/03/Appartement-%C3%A0-louer-%C3%A0-New-York.jpg"

puts " ====================== "
#
# ===== FLATS
print "Creating flat 1..."

flat1 = Flat.create!(
  name: 'Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, large kitchen.',
  price_per_night: 75,
  number_of_guests: 3
)
flat1.photo.attach(io: URI.open(img_flat1), filename: 'flat1.png', content_type: 'image/png')
flat1.save!
puts "OK !"

print "Creating flat 2..."

flat2 = Flat.create!(
  name: 'Charming Studio in Paris',
  address: '5 Rue Oberkampf, 75011 Paris, France',
  description: 'Cozy and stylish studio perfect for a romantic getaway. Walking distance from cafés.',
  price_per_night: 90,
  number_of_guests: 2
)
flat2.photo.attach(io: URI.open(img_flat2), filename: 'flat2.png', content_type: 'image/png')
flat2.save!
puts "OK !"

print "Creating flat 3..."

flat3 = Flat.create!(
  name: 'Modern Apartment in Berlin',
  address: '32 Warschauer Str., 10243 Berlin, Germany',
  description: 'Minimalist and bright apartment with city views. Close to public transport and nightlife.',
  price_per_night: 110,
  number_of_guests: 4
)
flat3.photo.attach(io: URI.open(img_flat3), filename: 'flat3.png', content_type: 'image/png')
flat3.save!
puts "OK !"

print "Creating flat 4..."

flat4 = Flat.create!(
  name: 'Rustic Cabin in the Swiss Alps',
  address: 'Alpine Road 8, 3989 Riederalp, Switzerland',
  description: 'Experience peace and nature in this rustic wooden cabin with mountain views and a fireplace.',
  price_per_night: 150,
  number_of_guests: 5
)
flat4.photo.attach(io: URI.open(img_flat4), filename: 'flat4.png', content_type: 'image/png')
flat4.save!
puts "OK !"

print "Creating flat 5..."

flat5 = Flat.create!(
  name: 'Seaside Villa in Barcelona',
  address: 'Carrer de la Mar, 08003 Barcelona, Spain',
  description: 'Sunny villa steps away from the beach. Private garden, pool, and modern amenities.',
  price_per_night: 200,
  number_of_guests: 6
)
flat5.photo.attach(io: URI.open(img_flat5), filename: 'flat5.png', content_type: 'image/png')
flat5.save!
puts "OK !"

print "Creating flat 6..."

flat6 = Flat.create!(
  name: 'Cozy Loft in New York City',
  address: '123 Bedford Ave, Brooklyn, NY 11211, USA',
  description: 'Trendy loft in the heart of Williamsburg. Open-plan space, industrial design, great food nearby.',
  price_per_night: 130,
  number_of_guests: 3
)
flat6.photo.attach(io: URI.open(img_flat6), filename: 'flat6.png', content_type: 'image/png')
flat6.save!
puts "OK !"
