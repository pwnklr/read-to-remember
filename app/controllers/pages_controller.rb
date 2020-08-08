class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if current_user
      @highlight = current_user.highlights.includes(source: :author).sample
    end
  end
end
