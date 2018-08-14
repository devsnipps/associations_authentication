# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
Category.create([{ name: 'Veg' }, { name: 'Non-veg' }, { name: 'Grovery' }, { name: 'Kitchen' }, { name: 'Dining' }, { name: 'Bedroom' }, { name: 'Carts' }, { name: 'Beds' },{ name: 'Pillows' }, { name: 'Sofas' }, { name: 'Carpets' }])
Destination.create([{ name: 'Bang' }, { name: 'Hyd' }, { name: 'Chn' }, { name: 'kerala' }, { name: 'Kolkatta' }, { name: 'Delhi' }, { name: 'Punjab' }, { name: 'Agra' },{ name: 'Alhabad' }, { name: 'mumbai' }, { name: 'Patna' }])

#   Character.create(name: 'Luke', movie: movies.first)
 #Category.create(name: 'Women')
 Category.create(name: 'Dal', parent: veg)
 Category.create(name: 'chicken', parent: Non-veg)