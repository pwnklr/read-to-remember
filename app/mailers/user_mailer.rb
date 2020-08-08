class UserMailer < ApplicationMailer
  def daily_highlights(user)
    @user = user
    @flashcards = @user.flashcards

    mail(
      from: "dailyhighlights@readtoremember.xyz",
      to: @user.email,
      subject: "Daily highlights from  #{@flashcards.first.source.author.name} and others") do |format|
        format.html { render 'daily_highlights.html.erb' }
        format.text { render plain: 'daily_highlights.text.erb' }
      end
  end
end
