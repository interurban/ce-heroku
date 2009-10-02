task :git_submodules do
  puts `git submodule init 2>&1`
  puts `git submodule update 2>&1`
end

task :load_roles => :environment do  
  Role.enumeration_model_updates_permitted = true
  Role.create(:name => 'admin')    
  Role.create(:name => 'moderator')
  Role.create(:name => 'member')            
  Role.enumeration_model_updates_permitted = false  
end