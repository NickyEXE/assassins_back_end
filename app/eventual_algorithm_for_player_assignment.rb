users = [{user: "nicky", id: 1}, {user: "khaled", id: 2}, {user: "jessy", id: 3}, {user: "ryan", id:4
}, {user: "adam", id:5}, {user: "diana", id: 6}]
shuffled_users = users.shuffle
users.each do |user|
  i = 0
  if user[:id] == shuffled_users[0][:id]
    user[:target] = shuffled_users[1][:id]
    shuffled_users.delete_at(1)
  else
    user[:target] = shuffled_users[0][:id]
    shuffled_users.delete_at(0)
  end
end
puts users
puts shuffled_users
