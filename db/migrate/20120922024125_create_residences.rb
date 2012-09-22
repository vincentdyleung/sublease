class CreateResidences < ActiveRecord::Migration
  def change
    create_table :residences do |t|
      t.string :name
      t.string :address
      t.decimal :price
      t.date :availability
      t.decimal :bedroom
      t.decimal :bathroom
      t.decimal :num_people

      t.timestamps
    end
  end
end
