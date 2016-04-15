class LiveShowsController < ApplicationController

  def index
    @live_shows = LiveShow.all
    @recordings = LiveStreamRecording.all.order(date: 'DESC')
  end

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

  private
end
