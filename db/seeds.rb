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
img_flat1 = "https://www.google.com/url?sa=i&url=https%3A%2F%2Fmovaway.fr%2Fblog-londres%2Ftrouver-un-logement-a-londres%2F&psig=AOvVaw0K2vh-Oz3hN7w0GcPOKj_3&ust=1748526772088000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMju6funxo0DFQAAAAAdAAAAABAE"
img_flat2 = "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.junot.fr%2Ffr%2Fbiens%2Ftype%2Fappartements-haussmanniens-paris&psig=AOvVaw07u-uD_KIUYY3EpUcrGdKn&ust=1748526109837000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCNCKisGlxo0DFQAAAAAdAAAAABAE"
img_flat3 = "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.booking.com%2Fhotel%2Fde%2Fdowntown-apartments.fr.html&psig=AOvVaw0GBZzVp4E1Mi3n3m15AG5r&ust=1748526867796000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMiWnayoxo0DFQAAAAAdAAAAABAE"
img_flat4 = "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.legendaer-zermatt.com%2Ffr%2Flocation-appartement-suisse&psig=AOvVaw28hbKW-Y1J84UgjsYuPrN9&ust=1748526970301000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCNDJiduoxo0DFQAAAAAdAAAAABAK"
img_flat5 = "https://www.google.com/url?sa=i&url=https%3A%2F%2Fles-bons-plans-de-barcelone.com%2Flocation-appartement-sejour-court%2F&psig=AOvVaw2Ue2vg8Ind-NDwZLIzcOuP&ust=1748527043849000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCPCQ6vyoxo0DFQAAAAAdAAAAABAL"
img_flat6 = "https://www.google.com/url?sa=i&url=https%3A%2F%2Fluv.studio%2Ffr%2Fprojets%2Fappartement-manhattan%2F&psig=AOvVaw3VU875Mv-NjtlwOGTjncgm&ust=1748527110197000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCNDv156pxo0DFQAAAAAdAAAAABAf"

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
