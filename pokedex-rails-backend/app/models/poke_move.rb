# == Schema Information
#
# Table name: poke_moves
#
#  id         :bigint           not null, primary key
#  pokemon_id :bigint
#  move_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class PokeMove < ApplicationRecord
    belongs_to :pokemon,
        foreign_key: :pokemon_id,
        class_name: :Pokemon,
        dependent: :destroy
        
    belongs_to :move,
        foreign_key: :move_id,
        class_name: :Move

end
