require 'csv'

file_path = "data.csv"

parsed_data = []

CSV.foreach(file_path, headers: true) do |row|
    parsed_data << row.to_h
end

puts parsed_data