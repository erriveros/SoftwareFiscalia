require 'csv'

namespace :cargar_csv do
  desc "Importar csv"
  task marcas: :environment do
    filename = "datos.csv"
    direct = "app/assets/Marcas/" + filename
    counter = 0
    CSV.foreach(direct, "r", col_sep: ";") do |row|
      code, title = row
      crime_tag = CrimeTag.create(tag_id: code, tag: title)
      puts crime_tag.errors.full_messages if crime_tag.errors.any?
      counter += 1 if crime_tag.persisted?
    end
    puts "Se importaron #{counter} marcas"
  end
end
