class CreatePlayer < ActiveRecord::Migration[5.2]
  def change
    create_table :players, id: false, primary_key: :id do |t|
      t.primary_key :id, :unsigned_integer, auto_increment: true
      t.string :ign
      t.string :telegram
      t.string :steam
      t.boolean :is_bot, default: false
      t.boolean :is_admin, default: false
    end
  end
end
