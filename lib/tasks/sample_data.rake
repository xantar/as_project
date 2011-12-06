namespace :db do
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    make_admin
    add_dragons
    default_values
  end
end

def make_admin
  User.create!(:username  => "admin",
               :firstname => "Admin",
               :lastname  => "Person",
               :email     => "admin@mysite.com",
               :employeed => true,
               :manager   => true,
               :password  => "password",
               :password_confirmation => "password")
end

def default_values
  Source.create!( :name => "Internal" )
  Group.create!( :name => "-- None --" )
  default_medications
  default_morph_types
  default_statuses
  default_weight_types
end

def default_medications
  Medication.create!( :name => "Miconazole" )
  Medication.create!( :name => "Sulfonamide" )
end

def default_weight_types
  WeightType.create!( :name => "Normal" )
  WeightType.create!( :name => "Intake" )
  WeightType.create!( :name => "Pre-Hibernation" )
  WeightType.create!( :name => "Hibernation" )
  WeightType.create!( :name => "Post-Hibernation" )
  WeightType.create!( :name => "Pre-Egglaying" )
  WeightType.create!( :name => "Post-Egglaying" )
  WeightType.create!( :name => "Death" )
end

def default_morph_types
  MorphType.create!( :name => "Leatherback" )
  MorphType.create!( :name => "Hypomelanistic" )
  MorphType.create!( :name => "Silky" )
  MorphType.create!( :name => "Clear Nails" )
  MorphType.create!( :name => "Black Eyes" )
  MorphType.create!( :name => "Micro Scales" )
  MorphType.create!( :name => "Blood Red" )
  MorphType.create!( :name => "Sandfire" )
  MorphType.create!( :name => "Tangerine" )
  MorphType.create!( :name => "Lemon" )
end

def default_statuses
  Status.create!( :name => "Breeding", :tracked => true, :fertile => true )
  Status.create!( :name => "Juvenile", :tracked => true, :fertile => true )
  Status.create!( :name => "Infirmary", :tracked => true, :fertile => true )
  Status.create!( :name => "Hibernating", :tracked => true, :fertile => false )
  Status.create!( :name => "Deceased", :tracked => false, :fertile => false )
  Status.create!( :name => "Sold", :tracked => false, :fertile => false )
  Status.create!( :name => "Retired", :tracked => false, :fertile => false )
end

def add_dragons


end
