class CreatePlayerScore < ActiveRecord::Migration[5.2]
  def change
    create_table :player_scores, id: false, primary_key: :id do |t|
      t.primary_key :id, :unsigned_integer, auto_increment: true
      t.references :player
      t.references :score_board
      t.integer :score

      t.timestamps
    end
  end
end
