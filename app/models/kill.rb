class Kill < ApplicationRecord
  belongs_to :game
  belongs_to :killer, class_name: 'User', :foreign_key => 'killer_id'
  belongs_to :victim, class_name: 'User' , :foreign_key => 'victim_id'
end
