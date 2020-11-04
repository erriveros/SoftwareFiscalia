require 'csv'

namespace :create_user do
  desc "Crear un usuario"
  task admin: :environment do
    filename = "admins.csv"
    direct = "app/assets/Administradores/" + filename
    counter = 0
    CSV.foreach(direct, "r", col_sep: ";") do |row|
      email, name, password, rut, job = row
      admin = User.create(email: email, name: name, password: password, rut: rut, job: job)
      puts admin.errors.full_messages if admin.errors.any?
      counter += 1 if admin.persisted?
    end
    puts "Se importaron #{counter} administradores"
  end
end

