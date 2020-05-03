# Create a class and inherit from ActiveRecord::Migration
# why is timestamps set to null:false?
class CreateCostumes < ActiveRecord::Migration[4.2]
    def change #why t.timestamps null:false?
      create_table :costumes do |t|
        t.string :name
        t.string :size
        t.string :image_url
        t.float :price
  
        t.timestamps null: false
      end
    end
  end

# XBy convention, the class name should match the part of the
# Xfile name after the number, so in this case:
# X002_create_costumes.rb becomes class CreateCostumes

# XDefine a change method in which to do the migration
# XIn this change method, create columns with the correct names and 
# Xvalue types according to the spec

# !!! Before you run rake db:migrate, remember to fill out the other migration files -- otherwise you'll get an error resulting from the blank migration files.