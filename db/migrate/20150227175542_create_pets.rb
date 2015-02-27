class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.integer :house_id
      t.string :name
    end
  end
end
