class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.belongs_to :user
      t.string :name
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
