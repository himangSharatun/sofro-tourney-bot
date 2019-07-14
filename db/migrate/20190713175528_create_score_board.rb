class CreateScoreBoard < ActiveRecord::Migration[5.2]
  def change
    create_table :score_boards, id: false, primary_key: :id do |t|
      t.primary_key :id, :unsigned_integer, auto_increment: true
      t.references :groups
      t.string :name
      t.integer :game_title, null: false
    end
  end
end
