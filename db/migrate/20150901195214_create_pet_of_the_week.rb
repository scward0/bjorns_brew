class CreatePetOfTheWeek < ActiveRecord::Migration
  def change
    create_table :pet_of_the_weeks do |t|
      t.string :name
      t.string :age
      t.text :description
    end
  end
end
