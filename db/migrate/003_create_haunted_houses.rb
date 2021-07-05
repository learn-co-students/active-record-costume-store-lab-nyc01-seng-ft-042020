# Create your haunted_houses migration here

# !!! Before you run rake db:migrate, remember to fill out the other migration files -- otherwise you'll get an error resulting from the blank migration files.

class CreateHauntedHouses < ActiveRecord::Migration[5.1]
    def change
        create_table :haunted_houses do |t|
            t.string :name
            t.text :location
            t.string :theme
            t.integer :price
            t.boolean :whether_they_re_family_friendly_or_not
            t.datetime :opening_date
            t.datetime :closing_date
            t.text :long_description
        end
    end
end