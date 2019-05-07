
require 'uri'
require 'net/http'

class User < ApplicationRecord
  belongs_to :game, optional: true
  has_many :kills
  validates :name, :alias, presence: true
  validates :name, :alias, uniqueness: true
  # has_secure_password

  def hunter
    User.find_by(target_id: self.id)
  end

end
