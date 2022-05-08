user_one = User.find_or_initialize_by(email: 'user_one@gmail.com')
user_one.password = '123456'
user_one.password_confirmation = '123456'

restaurant_one = user_one.restaurants.find_or_initialize_by(name: 'Ugarit', address: 'Carrer de Bruniquer, 69')
restaurant_two = user_one.restaurants.find_or_initialize_by(name: 'Tomodachi', address: 'Travessera de Gràcia, 250')
restaurant_three = user_one.restaurants.find_or_initialize_by(name: 'Rasa Malaysia', address: 'Pg. de Sant Joan, 179')

user_one.save

user_two = User.find_or_initialize_by(email: 'user_one@gmail.com')
user_two.password = '123456'
user_two.password_confirmation = '123456'

restaurant_four = user_two.restaurants.find_or_initialize_by(name: 'Can Ros', address: 'Carrer de Roger de Flor, 303')
restaurant_five = user_two.restaurants.find_or_initialize_by(name: 'El Viejo Almacen', address: 'Carrer de Ramón y Cajal, 158')
restaurant_six = user_two.restaurants.find_or_initialize_by(name: 'Veg World India', address: 'Carrer de Bruniquer, 24')

user_two.save
