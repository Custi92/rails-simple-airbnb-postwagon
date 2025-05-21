# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Charming Studio in Paris',
  address: '5 Rue Oberkampf, 75011 Paris, France',
  description: 'Cozy and stylish studio perfect for a romantic getaway. Walking distance from cafés and the metro.',
  price_per_night: 90,
  number_of_guests: 2
)

Flat.create!(
  name: 'Modern Apartment in Berlin',
  address: '32 Warschauer Str., 10243 Berlin, Germany',
  description: 'Minimalist and bright apartment with city views. Close to public transport and nightlife.',
  price_per_night: 110,
  number_of_guests: 4
)

Flat.create!(
  name: 'Rustic Cabin in the Swiss Alps',
  address: 'Alpine Road 8, 3989 Riederalp, Switzerland',
  description: 'Experience peace and nature in this rustic wooden cabin with mountain views and a fireplace.',
  price_per_night: 150,
  number_of_guests: 5
)

Flat.create!(
  name: 'Seaside Villa in Barcelona',
  address: 'Carrer de la Mar, 08003 Barcelona, Spain',
  description: 'Sunny villa steps away from the beach. Private garden, pool, and modern amenities.',
  price_per_night: 200,
  number_of_guests: 6
)

Flat.create!(
  name: 'Cozy Loft in New York City',
  address: '123 Bedford Ave, Brooklyn, NY 11211, USA',
  description: 'Trendy loft in the heart of Williamsburg. Open-plan space, industrial design, great food nearby.',
  price_per_night: 130,
  number_of_guests: 3
)
