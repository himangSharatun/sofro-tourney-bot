class CreateGroup < ActiveRecord::Migration[5.2]
  create_table :groups, id: false, primary_key: :id do |t|
    t.primary_key :id, :unsigned_integer, auto_increment: true
    t.string :name, null: false
  end
end
