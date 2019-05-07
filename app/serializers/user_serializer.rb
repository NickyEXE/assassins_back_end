class UserSerializer < ActiveModel::Serializer
  attributes :id, :alias, :name, :secret_code, :game_id, :latitude, :longitude, :target
  belongs_to :game
  # has_one :target, class_name: "User", foreign_key: :target_id

end

def target
  if self.target_id
    target = User.find(self.target_id)
    return {latitude: target[:latitude], longitude: target[:longitude], name: target[:alias], target_id: target[:id], image_url: target[:image_url], lastTimeUpdated: (target[:lastTimeUpdated].to_f*1000)}
  end
end


# def game
#   return self.game[id]
# end
