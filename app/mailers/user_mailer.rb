class UserMailer < ApplicationMailer

  def daily_highlights(user)
    @user = user
    mail(
      from: "dailyhighlights@readtoremember.xyz",
      to: @user.email,
      subject: "Daily highlights from  #{@user.flashcards.first.author} and others") do |format|
        format.html { render 'welcome_email.html.erb' }
        format.text { render plain: 'welcome_email.text.erb' }
      end
   end

end
