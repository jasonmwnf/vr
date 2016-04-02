namespace :add_member_id do
  desc "TODO"
  task new_member_id: :environment do
    @customers2 = []

    CSV.foreach('active-members.csv') do |row|
      @customers2 << row
    end

    @customers2.each do |user|
      current_user = User.find_by(email: user[0])
      if current_user.present?
        current_user.update_attributes!(username: user[2])
      else
      end
    end

  end

end
