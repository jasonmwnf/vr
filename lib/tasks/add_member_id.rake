desc "add member_id"
task  add_member_id: :environment do
  require 'csv'

  CSV.foreach('member_id.csv') do |row|
    User.all.each do |user|
      if user.member_id == row[0]
        user.update_attributes!(product_code: row[1])
      end
    end
  end
end
