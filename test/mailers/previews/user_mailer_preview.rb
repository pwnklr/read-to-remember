# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def daily_highlights
    UserMailer.daily_highlights(User.last)
  end
end
