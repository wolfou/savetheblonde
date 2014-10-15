# require 'faker'

namespace :db do
  desc "Peupler la base de données"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    User.create!(:nom => "Utilisateur exemple",
                 :email => "example@railstutorial.org",
                 :password => "foobar",
                 :password_confirmation => "foobar",
                 :level => 0)
    99.times do |n|
      nom  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "motdepasse"
      level = n
      User.create!(:nom => nom,
                   :email => email,
                   :password => password,
                   :password_confirmation => password,
                   :level => level)
    end
  end
end