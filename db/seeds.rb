# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

StudyCourse.create [name: 'Architektur']
StudyCourse.create [name: 'Innenarchitektur']
StudyCourse.create [name: 'KlimaEngineering']
StudyCourse.create [name: 'Bauingenieurwesen']
StudyCourse.create [name: 'Infrastrukturmanagement']
StudyCourse.create [name: 'Wirtschaftsingenieurwesen Bau und Immobilien']
StudyCourse.create [name: 'Bauphysik']
StudyCourse.create [name: 'KlimaEngineering']
StudyCourse.create [name: 'Informatik']
StudyCourse.create [name: 'Informationslogistik']
StudyCourse.create [name: 'Vermessung und Geoinformatik']
StudyCourse.create [name: 'Wirtschaftsinformatik']
StudyCourse.create [name: 'Mathematik']
StudyCourse.create [name: 'Betriebswirtschaft']
StudyCourse.create [name: 'Wirtschaftsingenieurwesen Bau und Immobilien']
StudyCourse.create [name: 'Wirtschaftspsychologie']

bau_1 = Building.create [name: 'My Home', latitude: 48.7663727, longitude: 9.1780033]

admin = User.create [name: 'Patricio Cano', email: 'pato.cano@me.com', password: 'adminPassword',
                     password_confirmation: 'adminPassword', admin: true, study_course_id: 1]
