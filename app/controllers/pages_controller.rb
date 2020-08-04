class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    UserMailer.welcome_email.deliver_now!(current_user)
  end
end
