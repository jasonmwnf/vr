desc "add 0 to all user credits"
task  add_0_to_credits: :environment do
  User.all.each do |user|
    User.update(credits: 0)
  end
end
