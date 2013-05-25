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

bau_1 = Building.create [name: 'Bau 1', latitude: 48.7804525, longitude: 9.1729425]
bau_2 = Building.create [name: 'Bau 2', latitude: 48.7798125, longitude: 9.1734375]
bau_3 = Building.create [name: 'Bau 3', latitude: 48.7802450, longitude: 9.1722150]
bau_4 = Building.create [name: 'Bau 4', latitude: 48.7663727, longitude: 9.1780033]

raum1222 = Room.create [number: "222", building_id: 1]
raum1020 = Room.create [number: "020", building_id: 1]
raum1309 = Room.create [number: "309", building_id: 1]
raum1227 = Room.create [number: "227", building_id: 1]
raum1306 = Room.create [number: "306", building_id: 1]
raum1109 = Room.create [number: "109", building_id: 1]
raum1208 = Room.create [number: "208", building_id: 1]
raum1111 = Room.create [number: "111", building_id: 1]
raum1u28 = Room.create [number: "U28", building_id: 1]
raum2201 = Room.create [number: "201", building_id: 2]
raum2501 = Room.create [number: "501", building_id: 2]
raum1211 = Room.create [number: "211", building_id: 1]
raum1u37 = Room.create [number: "U37", building_id: 1]
raum3111 = Room.create [number: "111", building_id: 3]
raum1106 = Room.create [number: "106", building_id: 1]
raum2301 = Room.create [number: "301", building_id: 2]
raum1108 = Room.create [number: "108", building_id: 1]
raum2229 = Room.create [number: "229", building_id: 2]
raum1014 = Room.create [number: "014", building_id: 1]
raum3124 = Room.create [number: "124", building_id: 3]
raum3103 = Room.create [number: "103", building_id: 3]
raum1206 = Room.create [number: "206", building_id: 1]
raum1013 = Room.create [number: "013", building_id: 1]
raum2433 = Room.create [number: "433", building_id: 2]
raum1319 = Room.create [number: "319", building_id: 1]
raum1022 = Room.create [number: "022", building_id: 1]
raum1110 = Room.create [number: "110", building_id: 1]
raum2329 = Room.create [number: "329", building_id: 2]
raum2011 = Room.create [number: "011", building_id: 2]
raum1010 = Room.create [number: "010", building_id: 1]
raum2103 = Room.create [number: "103", building_id: 2]
raum2260 = Room.create [number: "260", building_id: 2]
raum1303 = Room.create [number: "303", building_id: 1]
raum3101 = Room.create [number: "101", building_id: 3]
raum1311 = Room.create [number: "311", building_id: 1]
raum1210 = Room.create [number: "210", building_id: 1]
raum3224 = Room.create [number: "224", building_id: 3]
raum2214 = Room.create [number: "214", building_id: 2]
raum2264 = Room.create [number: "264", building_id: 2]
raum3201 = Room.create [number: "201", building_id: 3]
raum2440 = Room.create [number: "440", building_id: 2]
raum1209 = Room.create [number: "209", building_id: 1]
raum2401 = Room.create [number: "401", building_id: 2]
raum1225 = Room.create [number: "225", building_id: 1]
raum3211 = Room.create [number: "211", building_id: 3]
raum1330 = Room.create [number: "330", building_id: 1]
raum3203 = Room.create [number: "203", building_id: 3]
raum3223 = Room.create [number: "223", building_id: 3]
raum1220 = Room.create [number: "220", building_id: 1]
raum3212 = Room.create [number: "212", building_id: 3]
raum127  = Room.create [number: "U27", building_id: 1]
raum2446 = Room.create [number: "446", building_id: 2]
raum1aua = Room.create [number: "AULA", building_id: 1]
raum2505 = Room.create [number: "505", building_id: 2]
raum3215 = Room.create [number: "215", building_id: 3]
raum3214 = Room.create [number: "214", building_id: 3]
raum4204 = Room.create [number: "204", building_id: 4]
raum2314 = Room.create [number: "314", building_id: 2]
raum3303 = Room.create [number: "303", building_id: 3]
raum1113 = Room.create [number: "113", building_id: 1]
raum2405 = Room.create [number: "405", building_id: 2]
raum3401 = Room.create [number: "401", building_id: 3]
raum2021 = Room.create [number: "021", building_id: 2]
raum2233 = Room.create [number: "233", building_id: 2]
raum3323 = Room.create [number: "323", building_id: 3]
raum4011 = Room.create [number: "011", building_id: 4]
raum3317 = Room.create [number: "317", building_id: 3]
raum2444 = Room.create [number: "444", building_id: 2]
raum4211 = Room.create [number: "211", building_id: 4]
raum2548 = Room.create [number: "548", building_id: 2]
raum2113 = Room.create [number: "113", building_id: 2]
raum4117 = Room.create [number: "117", building_id: 4]
raum3206 = Room.create [number: "206", building_id: 3]
raum3320 = Room.create [number: "320", building_id: 3]
raum2309 = Room.create [number: "309", building_id: 2]
raum4133 = Room.create [number: "133", building_id: 4]
raum4029 = Room.create [number: "029", building_id: 4]
raum2112 = Room.create [number: "112", building_id: 2]
raum3216 = Room.create [number: "216", building_id: 3]
raum4232 = Room.create [number: "232", building_id: 4]
raum2205 = Room.create [number: "205", building_id: 2]
raum4028 = Room.create [number: "028", building_id: 4]
raum2347 = Room.create [number: "347", building_id: 2]
raum4129 = Room.create [number: "129", building_id: 4]
raum4216 = Room.create [number: "216", building_id: 4]
raum2540 = Room.create [number: "540", building_id: 2]
raum1118 = Room.create [number: "118", building_id: 1]
raum4033 = Room.create [number: "033", building_id: 4]
raum3205 = Room.create [number: "205", building_id: 3]
raum4114 = Room.create [number: "114", building_id: 4]
raum4015 = Room.create [number: "015", building_id: 4]
raum2208 = Room.create [number: "208", building_id: 2]
raum4127 = Room.create [number: "127", building_id: 4]
raum2241 = Room.create [number: "241", building_id: 2]
raum2318 = Room.create [number: "318", building_id: 2]
raum4130 = Room.create [number: "130", building_id: 4]
raum2380 = Room.create [number: "380", building_id: 2]
raum2346 = Room.create [number: "346", building_id: 2]
raum4131 = Room.create [number: "131", building_id: 4]
raum2363 = Room.create [number: "363", building_id: 2]
raum2544 = Room.create [number: "544", building_id: 2]
raum4017 = Room.create [number: "017", building_id: 4]
raum2206 = Room.create [number: "206", building_id: 2]
raum1121 = Room.create [number: "121", building_id: 1]
raum4331 = Room.create [number: "331", building_id: 4]
raum2449 = Room.create [number: "449", building_id: 2]
raum2163 = Room.create [number: "163", building_id: 2]
raum4018 = Room.create [number: "018", building_id: 4]
raum3204 = Room.create [number: "204", building_id: 3]
raum2546 = Room.create [number: "546", building_id: 2]
raum2359 = Room.create [number: "359", building_id: 2]
raum2361 = Room.create [number: "361", building_id: 2]
raum2338 = Room.create [number: "338", building_id: 2]
raum2149 = Room.create [number: "149", building_id: 2]
raum3106 = Room.create [number: "106", building_id: 3]
raum2545 = Room.create [number: "545", building_id: 2]
raum4032 = Room.create [number: "032", building_id: 4]
raum4012 = Room.create [number: "012", building_id: 4]
raum2108 = Room.create [number: "108", building_id: 2]
raum4215 = Room.create [number: "215", building_id: 4]
raum2480 = Room.create [number: "480", building_id: 2]
raum2310 = Room.create [number: "310", building_id: 2]
raum4031 = Room.create [number: "031", building_id: 4]
raum3321 = Room.create [number: "321", building_id: 3]
raum4118 = Room.create [number: "118", building_id: 4]
raum2321 = Room.create [number: "321", building_id: 2]
raum4134 = Room.create [number: "134", building_id: 4]
raum2360 = Room.create [number: "360", building_id: 2]
raum2150 = Room.create [number: "150", building_id: 2]
raum1120 = Room.create [number: "120", building_id: 1]
raum2207 = Room.create [number: "207", building_id: 2]
raum4217 = Room.create [number: "217", building_id: 4]
raum4226 = Room.create [number: "226", building_id: 4]
raum2146 = Room.create [number: "146", building_id: 2]
raum3210 = Room.create [number: "210", building_id: 3]
raum3109 = Room.create [number: "109", building_id: 3]
raum4027 = Room.create [number: "027", building_id: 4]
raum2145 = Room.create [number: "145", building_id: 2]
raum4132 = Room.create [number: "132", building_id: 4]
raum2348 = Room.create [number: "348", building_id: 2]
raum2018 = Room.create [number: "018", building_id: 2]
raum2368 = Room.create [number: "368", building_id: 2]
raum2543 = Room.create [number: "543", building_id: 2]
raum4334 = Room.create [number: "334", building_id: 4]
raum1u03 = Room.create [number: "U03", building_id: 1]
raum3322 = Room.create [number: "322", building_id: 3]
raum1u38 = Room.create [number: "U38", building_id: 1]
raum3222 = Room.create [number: "222", building_id: 3]
raum3114 = Room.create [number: "114", building_id: 3]
raum4104 = Room.create [number: "104", building_id: 4]

admin = User.create [name: 'Patricio Cano', email: 'pato.cano@me.com', password: 'adminPassword',
                     password_confirmation: 'adminPassword', admin: true, study_course_id: 9]
