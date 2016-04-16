class LiveShowsController < ApplicationController

  def index
    @live_shows = LiveShow.all
    @recordings = LiveStreamRecording.all.order(date: 'DESC')
  end

  # Called via POSTback from payment provider
  def credits
    @user = User.find_by(email: params[:email])
    bought_credits = params[:trans_amount_usd].to_i

    if @user.update(credits: @user.credits + bought_credits)
      PrivatePub.publish_to("/credits/#{@user.member_id}", "$('#credits').html('Your credits #{@user.credits}'); alert('Transaction successful!')")
    else
      PrivatePub.publish_to("/credits/#{@user.member_id}", 'alert("Transaction failed!")')
    end

    render nothing: true
  end

  # Called via AJAX form submit from /live_shows/index.html.erb
  def tip
    @user = User.find(params[:email])
    @tip_amount = params[:amount].to_i

    if @tip_amount <= @user.credits
      @user.update!(credits: @user.credits - @tip_amount)
      PrivatePub.publish_to("/credits/#{@user.member_id}", "$('#credits').html('Your credits #{@user.credits}');")
    else
      PrivatePub.publish_to("/credits/#{@user.member_id}", "alert('Not enough credits!');")
    end

    render nothing: true
  end

  private
end
