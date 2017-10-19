require 'data_mapper'
require './app/app.rb'

namespace :db do
  desc "Non destructive upgrade"
  task :auto_upgrade do
    DataMapper.auto_upgrade!
    puts "auto_upgrade complete (no data loss)"

end

desc "Destructive updgrade"
task :auto_migrate do
    DataMapper.auto_migrate!
    puts "auto_migrate complete (data lost)"
  end
end 
