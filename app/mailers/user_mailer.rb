class UserMailer < ApplicationMailer

  def private_show(user, amount)
    @user = user
    @amount = amount
    mail(to: 'pares101@aol.com', subject: 'Test')
  end
end
