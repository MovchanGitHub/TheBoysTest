# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
%w[Funny ForRealBoys Hard ForOganesyan].each do |genre_name|
  Genre.find_or_create_by!(name: genre_name)
end
