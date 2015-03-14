class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.string :gender
      t.text :description
      t.text :interested_in
      t.text :tags
      t.binary :picture

      t.timestamps null: false
    end
  end
end
