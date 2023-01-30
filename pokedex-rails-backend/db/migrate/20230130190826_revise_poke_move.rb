class RevisePokeMove < ActiveRecord::Migration[7.0]
  def change
    add_index :poke_moves, [:pokemon_id, :move_id], unique: true
  end
end
