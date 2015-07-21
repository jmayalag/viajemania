# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(nombre: 'Turismo Internacional', descripcion: 'Turismo Internacional', mostrar_en_portada: true, orden: 1)
Category.create(nombre: 'Turismo Nacional', descripcion: 'Turismo Nacional', mostrar_en_portada: true, orden: 2)
Category.create(nombre: 'Viaje Estudiantil', descripcion: 'Viajes Estudiantiles', mostrar_en_portada: false, orden: 3)