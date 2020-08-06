desc "Send Daily Highlights to Users"
task :send_daily_highlights => :environment do
  User.send_daily_highlights
end

# desc "Reset Daily Flashcards in App"
# task :set_new_flashcards => :environment do


# end
