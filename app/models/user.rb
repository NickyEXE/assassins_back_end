class User < ApplicationRecord
  belongs_to :game
  has_many :kills
end
