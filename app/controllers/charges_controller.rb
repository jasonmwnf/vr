class ChargesController < ApplicationController
  def new

  end

  def create
    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source => params[:stripeToken]
    )
    charge = Stripe::Charge.create(
      :customer => customer.id,
      :amount   => params[:amount].to_i,
      :description => params[:description],
      :currency => 'usd'
    )
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
