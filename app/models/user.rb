
require 'uri'
require 'net/http'

class User < ApplicationRecord
  belongs_to :game, optional: true
  has_many :kills
  validates :name, :alias, presence: true
  validates :name, :alias, uniqueness: true
  has_secure_password


  def generateWords
    url = URI("https://random-word-api.herokuapp.com/word?key=GNTWFCEU&number=2")
    http = Net::HTTP.new(url.host, url.port)
    request = Net::HTTP::Get.new(url)
    response = http.request(request)
    puts response.read_body
  end
end
