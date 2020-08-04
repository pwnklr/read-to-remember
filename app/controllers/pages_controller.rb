class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    UserMailer.daily_highlights(current_user).deliver_now!
  end
end
