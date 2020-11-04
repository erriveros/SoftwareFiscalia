namespace :create_user do
  desc "Crear un usuario"
  task admin: :environment do
    admin_user = User.create(
        email:"admin@admin.com",
        name:"admin",
        password:"admin123",
        rut:"0.000.000-0",
        job:"Admin"
    )
    puts admin_user.errors.full_messages if admin_user.errors.any?
    puts "Se creo el usuario admin, admin@admin.com admin123." if admin_user.persisted?
  end
end
