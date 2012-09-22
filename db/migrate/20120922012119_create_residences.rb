class CreateResidences < ActiveRecord::Migration
  def change
    create_table :residences do |t|
      t.string :name
      t.string :address
      t.integer :price

      t.timestamps
    end
  end
end
