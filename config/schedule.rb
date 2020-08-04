every 1.day, :at '5am' do
  runner
  # User.all.each do |user|
  #   sample
  #   user.flashcards.destroy
  #   while user.flashcards.size < 7
  #     user.flashcards << user.highlights.sample
  #     user.flashcards.uniq!
  #   end
  for every user run flashcards method
end


every 1.day, :at '12am' do
  runner
  User.all.each do |user|
    UserMailer.welcome_email(user).deliver_now!
  end
end


