require 'json'
require_relative 'person'
require_relative 'student'
require_relative 'teacher'

class Storage
	def read_person_json
		person_json = File.open("src/JSONs/persons.json")

		person_json.read
	end

	def persons_from_map

		map = JSON.parse read_person_json
		person_list = []
		map.each do |person|
			if (person["classroom"])
				person_list.push Student.new(
					person["age"],
					nil,
					person["name"],
					person["permission"],
				)
			else
				person_list.push Teacher.new(
					person["age"],
					person["specialization"],
					person["name"],
					person["permission"],
				)
			end
		end

		person_list
	end


end
