namespace :db do
  task :populate => :environment do
#    Rake::Task['db:reset'].invoke
    make_admin
  end
end

def make_admin
  User.create!(:username  => "admin",
               :email     => "admin@mysite.com",
               :employeed => true,
               :manager   => true,
               :password  => "admin",
               :password_confirmation => "admin")
end
