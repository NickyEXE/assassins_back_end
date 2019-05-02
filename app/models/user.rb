
require 'uri'
require 'net/http'

class User < ApplicationRecord
  belongs_to :game
  has_many :kills


  def generateWords
    url = URI("https://random-word-api.herokuapp.com/word?key=GNTWFCEU&number=2")
    http = Net::HTTP.new(url.host, url.port)
    request = Net::HTTP::Get.new(url)
    response = http.request(request)
    puts response.read_body
  end
end
