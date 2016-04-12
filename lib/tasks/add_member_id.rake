desc "add member_id"
task  add_member_id: :environment do
  require 'csv'
  @customers2 = []

  CSV.foreach('active-members.csv') do |row|
    @customers2 << row
    binding.pry
  end

  @customers2.each do |user|
    current_user = User.find_by(email: user[0])
    if current_user.present?
      current_user.update_attributes!(username: user[2])
    else
    end
  end

end
