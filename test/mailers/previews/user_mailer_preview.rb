# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def daily_highlights
    UserMailer.with(user: User.first).daily_highlights
  end
end
