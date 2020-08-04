class UserMailer < ApplicationMailer
  def daily_highlights(user)
    @user = user
    @flashcards = []
    while @flashcards.length < 7 do
      @flashcards <<  @user.highlights.sample
      @flashcards.uniq!
      end
    mail(
      from: "dailyhighlights@readtoremember.xyz",
      to: "readtorememberrrr@gmail.com",
      subject: "Daily highlights from  #{@flashcards.first.source.author.name} and others") do |format|
        format.html { render 'daily_highlights.html.erb' }
        format.text { render plain: 'daily_highlights.text.erb' }
  end
end
