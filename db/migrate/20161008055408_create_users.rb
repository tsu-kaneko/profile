class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :age
      t.string :address
      t.string :hobby
      t.string :language
      t.string :ide
      t.string :weight
      t.string :height
      t.string :password

      t.timestamps null: false
    end
  end
end
