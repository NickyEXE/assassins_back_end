class UserSerializer < ActiveModel::Serializer
  attributes :id, :alias, :name, :secret_code, :game_id, :latitude, :longitude, :target, :kill_count, :all_time_kill_count
  belongs_to :game
  # has_one :target, class_name: "User", foreign_key: :target_id

end

def kill_count
  if self.game_id
<<<<<<< HEAD
   return Kill.where(game_id: self.game.id, killer_id: self.id).length
=======
  return Kill.where(game_id: self.game.id, killer_id: self.id).length
>>>>>>> a72a2b5de329f73213e09ae810ce6955d70702b7
  end
end

def all_time_kill_count
  return Kill.where(killer_id: self.id).length
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
