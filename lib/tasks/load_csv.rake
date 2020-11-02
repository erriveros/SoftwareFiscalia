require 'csv'

namespace :load_csv do
  desc "Importar títulos e ids de crímenes"
  task crimes: :environment do
    filename = "app/assets/tipos_crimenes/datos.csv"
    counter = 0
    CSV.foreach(filename, "r", col_sep: ";") do |row|
      code, title = row
      crime_tag = CrimeTag.create(tag_id: code, tag: title)
      puts crime_tag.errors.full_messages if crime_tag.errors.any?
      counter += 1 if crime_tag.persisted?
    end
    puts "Se importaron #{counter} tags de crímenes"
  end
end
