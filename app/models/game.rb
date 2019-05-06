class Game < ApplicationRecord
  has_many :users
  has_many :kills

  def add_list_of_users_to_game_by_id(user_ids)
    user_ids.map {|user_id| User.find(user_id).update(game_id: self.id)}
    return self.users
  end

  def start_game
    if !self.started
      self.assign_targets
      self.update(started: true)
    end
  end

  # def surviving_players
  #   self.users.select(|user| !Kill.all.find_by(victim_id: user_id, game_id: self.id))
  # end

  def assign_targets
  shuffled_order = (1..self.users.length).to_a.shuffle
    i = 0
    order_hash = Hash.new
    self.users.each do |user|
      order_hash[shuffled_order[i]] = user
      i+=1
    end
    order_hash.each do |order, user|
      puts user
      if order+1 > shuffled_order.length
        user.update(target_id: order_hash[1].id)
      else
        user.update(target_id: order_hash[order+1].id)
      end
    end
  end

end
