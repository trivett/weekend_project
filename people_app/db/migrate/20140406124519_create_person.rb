class CreatePerson < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :firstname
      t.string :lastname
      t.date  :birthdate
      t.integer  :drinks
      t.string :image_url
      t.boolean :license
    end
  end
end
