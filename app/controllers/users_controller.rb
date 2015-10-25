class UsersController < ApplicationController
  def status
    @new_user = params
    binding.pry
  end
end