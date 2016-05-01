class UserMailer < ApplicationMailer
  def private_show(user, amount)
    @user = user
    @amount = amount
    mail(to: 'veronica@veronicarodriguez.com', subject: 'New private show request')
  end
end
