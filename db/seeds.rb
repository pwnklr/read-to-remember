require 'faker'
require "open-uri"

Kindle.destroy_all
User.destroy_all
Author.destroy_all
puts "user + highlight destroyed"

puts "starting seeds"

# user
  new_user = User.new(
    email: "read2remember@gmail.com",
    password: "#fakeitillyoumakeit")
  puts "user not saved"


# books
# 1 book
  author_1 = Author.create!(name: "Ashlee Vance")
  new_book_1 = Source.new(
      title: "Elon Musk: Tesla, SpaceX, and the Quest for a Fantastic Future",
      category: "book")
      image_1 = URI.open("https://images2.medimops.eu/product/3c3afc/M0006230125X-large.jpg")
      new_book_1.photo.attach(io: image_1, filename: "#{new_book_1.title}", content_type: 'image/png')

  new_book_1.author = author_1
  new_book_1.user = new_user
  puts new_book_1.author.id
  new_book_1.save!


  highlight_1 = Highlight.new(
    content: "I remember one time we had two test stands running and blew up two things in one day. I told Elon we could put another engine on there, but I was really, really frustrated and just tired and mad and was kinda short with Elon. I said, ‘We can put another fucking thing on there, but I’ve blown up enough shit today.’ He said, ‘Okay, all right, that’s fine. Just calm down. We’ll do it again tomorrow.’” Coworkers in El Segundo later reported that Musk had been near tears during this call after hearing the frustration and agony in Mueller’s voice. What Musk would not tolerate were excuses or the lack of a clear plan of attack. Hollman was one of many engineers who arrived at this realization after facing one of Musk’s trademark grillings. “The worst call was the first one,” Hollman said. “Something had gone wrong, and Elon asked me how long it would take to be operational again, and I didn’t have an immediate answer. He said, ‘You need to. This is important to the company. Everything is riding on this. Why don’t you have an answer?’ He kept hitting me with pointed, direct questions. I thought it was more important to let him know quickly what happened, but I learned it was more important to have all the information.",
    page: 2026)
    highlight_1.source = new_book_1
    highlight_1.user = new_user
    highlight_1.save!

 highlight_2 = Highlight.new(
    content: "Elon can be very demanding, but he’ll make sure the obstacles in your way are removed,",
    page: 2075)
    highlight_2.source = new_book_1
    highlight_2.user = new_user
    highlight_2.save!

highlight_3 = Highlight.new(
    content: "So, I e-mailed him my resume at two thirty A.M., and he replied back in thirty minutes addressing everything I put in there point by point. He said, ‘When you interview make sure you can talk concretely about what you do rather than use buzzwords.’ It floored me that he would take the time to do this.",
    page: 2089)
    highlight_3.source = new_book_1
    highlight_3.user = new_user
    highlight_3.save!


highlight_4 = Highlight.new(
    content: "To the extent that the financial situation unnerved Musk, he rarely if ever let it show to employees. “Elon did a great job of not burdening people with those worries,” said Spikes. “He always communicated the importance of being lean and of success, but it was never ‘if we fail, we’re done for.’ He was very optimistic.",
    page: 2272)
    highlight_4.source = new_book_1
    highlight_4.user = new_user
    highlight_4.save!


highlight_5 = Highlight.new(
    content: "He told the investors that he would take another loan from SpaceX and fund the entire round—all $40 million—himself. The tactic worked. “When you have scarcity, it naturally reinforces greed and leads to more interest,”",
    page: 3252)
    highlight_5.source = new_book_1
    highlight_5.user = new_user
    highlight_5.save!

highlight_6 = Highlight.new(
    content: "For Gracias, the Tesla and SpaceX investor and Musk’s friend, the 2008 period told him everything he would ever need to know about Musk’s character. He saw a man who arrived in the United States with nothing, who had lost a child, who was being pilloried in the press by reporters and his ex-wife and who verged on having his life’s work destroyed. “He has the ability to work harder and endure more stress than anyone I’ve ever met,” Gracias said. “What he went through in 2008 would have broken anyone else. He didn’t just survive. He kept working and stayed focused.” That ability to stay focused in the midst of a crisis stands as one of Musk’s main advantages over other executives and competitors. “Most people who are under that sort of pressure fray,” Gracias said. “Their decisions go bad. Elon gets hyperrational. He’s still able to make very clear, long-term decisions. The harder it gets, the better he gets. Anyone who saw what he went through firsthand came away with more respect for the guy. I’ve just never seen anything like his ability to take pain.”",
    page: 3267)
    highlight_6.source = new_book_1
    highlight_6.user = new_user
    highlight_6.save!

highlight_7 = Highlight.new(
    content: "A whole new breed of satellite makers has just appeared on the scene with the ability to answer Google-like queries about our planet. These satellites can zoom in on Iowa and determine when cornfields are at peak yields and ready to harvest, and they can count cars in Wal-Mart parking lots throughout California to calculate shopping demand during the holiday season.",
    page: 3322)
    highlight_7.source = new_book_1
    highlight_7.user = new_user
    highlight_7.save!

highlight_8 = Highlight.new(
    content: "So, I think generally you do want to have a timeline where, based on everything you know about, the schedule should be X, and you execute towards that, but with the understanding that there will be all sorts of things that you don’t know about that you will encounter that will push the date beyond that. It doesn’t mean that you shouldn’t have tried to aim for that date from the beginning because aiming for something else would have been an arbitrary time increase.",
    page: 3540)
    highlight_8.source = new_book_1
    highlight_8.user = new_user
    highlight_8.save!

highlight_9 = Highlight.new(
    content: "“He doesn’t say, ‘You have to do this by Friday at two P.M.,’” Brogan said. “He says, ‘I need the impossible done by Friday at two P.M. Can you do it?’ Then, when you say yes, you are not working hard because he told you to. You’re working hard for yourself. It’s a distinction you can feel. You have signed up to do your own work.”",
    page: 3562)
    highlight_9.source = new_book_1
    highlight_9.user = new_user
    highlight_9.save!

highlight_10 = Highlight.new(
    content: "His favorite request dates back to 2004. SpaceX needed an actuator that would trigger the gimbal action used to steer the upper stage of Falcon 1. Davis had never built a piece of hardware before in his life and naturally went out to find some suppliers who could make an electromechanical actuator for him. He got a quote back for $120,000. “Elon laughed,” Davis said. “He said, ‘That part is no more complicated than a garage door opener. Your budget is five thousand dollars. Go make it work.’”",
    page: 3593)
    highlight_10.source = new_book_1
    highlight_10.user = new_user
    highlight_10.save!

highlight_11 = Highlight.new(
    content: "Decisions were made quickly during weekly meetings, and the entire company bought into them. “It was amazing how fast people would adapt to what came out of those meetings,” Watson said. “The entire ship could turn ninety degrees instantly. Lockheed Martin could never do anything like that.” Watson",
    page: 3622)
    highlight_11.source = new_book_1
    highlight_11.user = new_user
    highlight_11.save!


highlight_12 = Highlight.new(
    content: "If he asks you a question, you learn very quickly not to go give him a gut reaction. He wants answers that get down to the fundamental laws of physics.",
    page: 3626)
    highlight_12.source = new_book_1
    highlight_12.user = new_user
    highlight_12.save!


highlight_13 = Highlight.new(
    content: "“Elon will say, ‘Fine. You’re off the project, and I am now the CEO of the project. I will do your job and be CEO of two companies at the same time. I will deliver it,’” Brogan said. “What’s crazy is that Elon actually does it. Every time he’s fired someone and taken their job, he’s delivered on whatever the project was.”",
    page: 3666)
    highlight_13.user = new_user
    highlight_13.source = new_book_1
    highlight_13.save!

puts "1. book done"

# 2 book
  author_2 = Author.create!(name: "Ichiro Kishimi and Fumitake Koga")
  new_book_2 = Source.new(
    title: "The Courage To Be Disliked: How to free yourself, change your life and achieve real happiness",
    category: "book")
    image = URI.open("https://media.hugendubel.de/shop/coverscans/339/33927829_9781760630737_xl.jpg")
    new_book_2.photo.attach(io: image, filename: "#{new_book_2.title}", content_type: 'image/png')

  new_book_2.author = author_2
  new_book_2.user = new_user
  new_book_2.save!


highlight_14 = Highlight.new(
    content: "He lacked self-confidence and, ever since childhood, this had been compounded by deep-seated feelings of inferiority with regard to his personal and academic backgrounds, as well as his physical appearance. Perhaps, as a result, he tended to be excessively self-conscious when people looked at him. Mostly, he seemed incapable of truly appreciating other people’s happiness,",
    page: 170,
    my_note: "When lacking confidence more self ceterd to nk be exposed. Not m miakes to fit in")
    highlight_14.user = new_user
    highlight_14.source = new_book_2
    highlight_14.save!

highlight_15 = Highlight.new(
    content: "‘teleology’.",
    page: 249,
    my_note: "Not causenaffect. Past irrelevant konly present goals. Creatin an anxiety state to achieve goal kf nkot startin a project for example")
    highlight_15.user = new_user
    highlight_15.source = new_book_2
    highlight_15.save!

highlight_16 = Highlight.new(
    content: "‘aetiology’ (the study of causation) and teleology (the study of the purpose of a given phenomenon, rather than its cause). Everything you have been telling me is based in aetiology. As long as we stay in aetiology, we will not take a single step forward.",
    page: 254,
    my_note: "Causation would mean future is defind #causation")
    highlight_16.user = new_user
    highlight_16.source = new_book_2
    highlight_16.save!

highlight_17 = Highlight.new(
    content: "‘No experience is in itself a cause of our success or failure. We do not suffer from the shock of our experiences—the so-called trauma—but instead we make out of them whatever suits our purposes. We are not determined by our experiences, but the meaning we give them is self-determining.’",
    page: 273,
    my_note: "Trauma no effect but what we tell lourselves")
    highlight_17.user = new_user
    highlight_17.source = new_book_2
    highlight_17.save!


highlight_18 = Highlight.new(
    content: "Your life is not something that someone gives you, but something you choose yourself, and you are the one who decides how you live.",
    page: 280)
    highlight_18.user = new_user
    highlight_18.source = new_book_2
    highlight_18.save!

highlight_19 = Highlight.new(
    content: "can’t fit into society because I was abused by my parents, it’s still because it is his goal to think that way.",
    page: 284)
    highlight_19.user = new_user
    highlight_19.source = new_book_2
    highlight_19.save!

highlight_20 = Highlight.new(
    content: "If I stay in my room all the time, without ever going out, my parents will worry. I can get all of my parents’ attention focused on me.",
    page: 293,
    my_note: "In theraphy gives me an excuse #excuse")
    highlight_20.user = new_user
    highlight_20.source = new_book_2
    highlight_20.save!


highlight_21 = Highlight.new(
    content: "YOUTH: So, anger is a means to achieve a goal? PHILOSOPHER: That is what teleology says.",
    page: 340,
    my_note: "Also anger to show limita")
    highlight_21.user = new_user
    highlight_21.source = new_book_2
    highlight_21.save!

highlight_22 = Highlight.new(
    content: "please understand, it is Freudian aetiology that denies our free will, and treats humans like machines.",
    page: 368)
    highlight_22.user = new_user
    highlight_22.source = new_book_2
    highlight_22.save!

highlight_23 = Highlight.new(
    content: "‘People are not driven by past causes, but move toward goals that they themselves set’—that",
    page: 371,
    my_note: "??")
    highlight_23.user = new_user
    highlight_23.source = new_book_2
    highlight_23.save!

highlight_24 = Highlight.new(
    content: "Why are you rushing for answers? You should arrive at answers on your own, and not rely upon what you get from someone else.",
    page: 385,
    my_note: "Own thinking. But by default not bc you learn frkm others?")
    highlight_24.user = new_user
    highlight_24.source = new_book_2
    highlight_24.save!


highlight_25 = Highlight.new(
    content: "This is because you have not learned to love yourself. And to try to love yourself, you are wishing to be reborn as a different person.",
    page: 413,
    my_note: "Trying to get another shot")
    highlight_25.user = new_user
    highlight_25.source = new_book_2
    highlight_25.save!


highlight_26 = Highlight.new(
    content: "At the very least, I do not think I would like to be a different person and I accept who I am.",
    page: 419,
    my_note: "What parts woould you nkt want to miss?")
    highlight_26.user = new_user
    highlight_26.source = new_book_2
    highlight_26.save!

highlight_27 = Highlight.new(
    content: "You want to be Y or someone else because you are utterly focused on what you were born with. Instead, you’ve got to focus on what you can make of your equipment.",
    page: 425,
    my_note: "Nothing except now matters #now")
    highlight_27.user = new_user
    highlight_27.source = new_book_2
    highlight_27.save!

highlight_28 = Highlight.new(
    content: "But you are unhappy now because you yourself chose ‘being unhappy’. Not because you were born under an unlucky star.",
    page: 439,
    my_note: "In this relationship to be unhappy?")
    highlight_28.user = new_user
    highlight_28.source = new_book_2
    highlight_28.save!

highlight_29 = Highlight.new(
    content: "It’s that you judged ‘being unhappy’ to be good for you.",
    page: 454)
    highlight_29.user = new_user
    highlight_29.source = new_book_2
    highlight_29.save!

highlight_30 = Highlight.new(
    content: "You choose your lifestyle.",
    page: 479)
    highlight_30.user = new_user
    highlight_30.source = new_book_2
    highlight_30.save!

highlight_31 = Highlight.new(
    content: "Nevertheless, it is you who chose ‘this kind of self’. YOUTH: I don’t get what you’re saying. How on earth could I have chosen it? PHILOSOPHER: Adlerian psychology’s view is that it happens around the age of ten.",
    page: 486,
    my_note: "What happened at 10")
    highlight_31.user = new_user
    highlight_31.source = new_book_2
    highlight_31.save!

highlight_32 = Highlight.new(
    content: "You say that you want to change right this minute. You even claim that you want to be reborn as a different person. After all that then, why are you still unable to change? It is because you are making the persistent decision not to change your lifestyle.",
    page: 504,
    my_note: "#change")
    highlight_32.user = new_user
    highlight_32.source = new_book_2
    highlight_32.save!

highlight_33 = Highlight.new(
    content: "When we try to change our lifestyles, we put our great courage to the test. There is the anxiety generated by changing, and the disappointment attendant to not changing. I am sure you have selected the latter.",
    page: 515,
    my_note: "Not changing leads to disappointment #change")
    highlight_33.user = new_user
    highlight_33.source = new_book_2
    highlight_33.save!

highlight_34 = Highlight.new(
    content: "‘if only I could be like Y’",
    page: 536,
    my_note: "No more if only")
    highlight_34.user = new_user
    highlight_34.source = new_book_2
    highlight_34.save!

highlight_35 = Highlight.new(
    content: "That is what changing your current lifestyle is about. He won’t get anywhere by not submitting anything.",
    page: 547,
    my_note: "Submit something! #push")
    highlight_35.user = new_user
    highlight_35.source = new_book_2
    highlight_35.save!

highlight_36 = Highlight.new(
    content: "For the same reason, then, it’s crucial to not mix up ‘feeling of inferiority’ and ‘inferiority complex’, and to think about them as clearly separate.",
    page: 794,
    my_note: "Words matter")
    highlight_36.user = new_user
    highlight_36.source = new_book_2
    highlight_36.save!

highlight_37 = Highlight.new(
    content: "‘What you are lacking is the courage to be happy.’",
    page: 1113)
    highlight_37.user = new_user
    highlight_37.source = new_book_2
    highlight_37.save!

puts "2. book done"

# 3 book
  author_3 = Author.create!(name: "Brent Schlender and Rick Tetzeli")
  new_book_3 = Source.new(
    title: "Becoming Steve Jobs: The evolution of a reckless upstart into a visionary leader",
    category: "book")
    image = URI.open("https://i.ebayimg.com/images/g/XE4AAOSwu1JezQ7j/s-l640.jpg")
    new_book_3.photo.attach(io: image, filename: "#{new_book_3.title}", content_type: 'image/png')

  new_book_3.author = author_3
  new_book_3.user = new_user
  new_book_3.save!


highlight_38 = Highlight.new(
    content: "But also the bar for what it meant to have a customer, and whether that customer was happy – ideally, giddily happy. Steve made real the notion of customer delight. He did it with the products that Apple shipped. The fetishistic unboxing video trend took off only when Apple made stunning, simple packaging deserving of the device inside.",
    page: 118)
    highlight_38.user = new_user
    highlight_38.source = new_book_3
    highlight_38.save!

highlight_39 = Highlight.new(
    content: "Would Steve, in that case, be “mean” to fire, or at a minimum, yell at people for shipping a lousy product? Or is it the people who made the lousy product that are being “mean” to the rest of the world?",
    page: 149)
    highlight_39.user = new_user
    highlight_39.source = new_book_3
    highlight_39.save!

highlight_40 = Highlight.new(
    content: "This is the role of the CEO in any company. Some care and some don’t. Great CEOs care a lot. Steve cared a lot.",
    page: 163)
    highlight_40.user = new_user
    highlight_40.source = new_book_3
    highlight_40.save!

highlight_41 = Highlight.new(
    content: "Good enough was good enougha for a long time, but thanks to Steve, it isn’t any more.",
    page: 176)
    highlight_41.user = new_user
    highlight_41.source = new_book_3
    highlight_41.save!

highlight_42 = Highlight.new(
    content: "But he learned how to manage himself, his own personal miasma of talents and rough edges. Most of them, anyway.",
    page: 563)
    highlight_42.user = new_user
    highlight_42.source = new_book_3
    highlight_42.save!

highlight_43 = Highlight.new(
    content: "Dylan, the Beatles, the Grateful Dead, the Band, and Janis Joplin",
    page: 653)
    highlight_43.user = new_user
    highlight_43.source = new_book_3
    highlight_43.save!

highlight_44 = Highlight.new(
    content: "He also delved more deeply into Asian philosophy and mysticism, and dropped acid with greater frequency, at times almost as a spiritual sacrament.",
    page: 660)
    highlight_44.user = new_user
    highlight_44.source = new_book_3
    highlight_44.save!

highlight_45 = Highlight.new(
    content: "In Buddhist philosophy, life is often compared to an ever-changing river. There’s a sense that everything, and every individual, is ceaselessly in the process of becoming. In this view of the world, achieving perfection is also a continuous process, and a goal that can never be fully attained.",
    page: 686,
    my_note: "#change")
    highlight_45.user = new_user
    highlight_45.source = new_book_3
    highlight_45.save!

highlight_46 = Highlight.new(
    content: "what matters is your state of preparedness to deal with it. Steve had a kind of hyperawareness of his surroundings that allowed him to leap at opportunities that presented themselves.",
    page: 814,
    my_note: "#hyperawareness")
    highlight_46.user = new_user
    highlight_46.source = new_book_3
    highlight_46.save!

highlight_47 = Highlight.new(
    content: "Steve kept doing what he knew how to do best: rally a small crew to produce something wonderful.",
    page: 921,
    my_note: "#wonderful")
    highlight_47.user = new_user
    highlight_47.source = new_book_3
    highlight_47.save!

highlight_48 = Highlight.new(
    content: "a bicycle for the mind.",
    page: 1254,
    my_note: "#bicycle")
    highlight_48.user = new_user
    highlight_48.source = new_book_3
    highlight_48.save!

puts "3. book done"
# 4 book
  author_4 = Author.create!(name: "Robin DiAngelo")
  new_book_4 = Source.new(
    title: "White Fragility: Why It's So Hard for White People to Talk About Racism",
    category: "book")
    image = URI.open("https://assets.thalia.media/img/artikel/6033369351541b887af47f9382b2b923d21fc673-00-00.jpeg")
    new_book_4.photo.attach(io: image, filename: "#{new_book_4.title}", content_type: 'image/png')

  new_book_4.author = author_4
  new_book_4.user = new_user
  new_book_4.save!

highlight_49 = Highlight.new(
    content: "the mere suggestion that being white has meaning often triggers a range of defensive responses.",
    page: 104,
    my_note: "#trigger")
    highlight_49.user = new_user
    highlight_49.source = new_book_4
    highlight_49.save!

highlight_50 = Highlight.new(
    content: "Though white fragility is triggered by discomfort and anxiety, it is born of superiority and entitlement. White fragility is not weakness per se. In fact, it is a powerful means of white racial control and the protection of white advantage.",
    page: 107,
    my_note: "#trigger #fragility")
    highlight_50.user = new_user
    highlight_50.source = new_book_4
    highlight_50.save!

highlight_51 = Highlight.new(
    content: "If, however, I understand racism as a system into which I was socialized, I can receive feedback on my problematic racial patterns as a helpful way to support my learning and growth. One of the greatest social fears for a white person is being told that something that we have said or done is racially problematic.",
    page: 140,
    my_note: "#learning #growth")
    highlight_51.user = new_user
    highlight_51.source = new_book_4
    highlight_51.save!

highlight_52 = Highlight.new(
    content: "old is different from being viewed as young, rich is different from poor, able-bodied different from having a disability, gay different from heterosexual, and so on. These groups matter, but they don’t matter naturally, as we are often taught to believe.",
    page: 216,
    my_note: "#opposite")
    highlight_52.user = new_user
    highlight_52.source = new_book_4
    highlight_52.save!

highlight_53 = Highlight.new(
    content: "Work to see how these messages have shaped your life, rather than use some aspect of your story to excuse yourself from their impact.",
    page: 262,
    my_note: "#story #excuse")
    highlight_53.user = new_user
    highlight_53.source = new_book_4
    highlight_53.save!

highlight_54 = Highlight.new(
    content: "“But race is the child of racism, not the father.”6 He means that first we exploited people for their resources, not according to how they looked. Exploitation came first, and then the ideology of unequal races to justify this exploitation followed.",
    page: 321,
    my_note: "#exploitation")
    highlight_54.user = new_user
    highlight_54.source = new_book_4
    highlight_54.save!

highlight_55 = Highlight.new(
    content: "People who claim not to be prejudiced are demonstrating a profound lack of self-awareness.",
    page: 363)
    highlight_55.user = new_user
    highlight_55.source = new_book_4
    highlight_55.save!

highlight_56 = Highlight.new(
    content: "Discrimination is action based on prejudice.",
    page: 368)
    highlight_56.user = new_user
    highlight_56.source = new_book_4
    highlight_56.save!

highlight_57 = Highlight.new(
    content: "Racism is deeply embedded in the fabric of our society. It is not limited to a single act or person.",
    page: 402)
    highlight_57.user = new_user
    highlight_57.source = new_book_4
    highlight_57.save!

highlight_58 = Highlight.new(
    content: "It follows that to name whiteness, much less suggest that it has meaning and grants unearned advantage, will be deeply disconcerting and destabilizing, thus triggering the protective responses of white fragility.",
    page: 499)
    highlight_58.user = new_user
    highlight_58.source = new_book_4
    highlight_58.save!

highlight_59 = Highlight.new(
    content: "First, white supremacy is never acknowledged. Second, we cannot study any sociopolitical system without addressing how that system is mediated by race.",
    page: 527)
    highlight_59.user = new_user
    highlight_59.source = new_book_4
    highlight_59.save!

highlight_60 = Highlight.new(
    content: "All systems of oppression are adaptive; they can withstand and adjust to challenges and still maintain inequality.",
    page: 684)
    highlight_60.user = new_user
    highlight_60.source = new_book_4
    highlight_60.save!

highlight_61 = Highlight.new(
    content: "Dismissing what we don’t understand",
    page: 1127)
    highlight_61.user = new_user
    highlight_61.source = new_book_4
    highlight_61.save!

puts "4. book done"

# 5 book
  author_5 = Author.create!(name: "Ken Kocienda")
  new_book_5 = Source.new(
    title: "Creative Selection: Inside Apple's Design Process During the Golden Age of Steve Jobs",
    category: "book")
    image = URI.open("https://images2.medimops.eu/product/f804b9/M0152900473X-large.jpg")
    new_book_5.photo.attach(io: image, filename: "#{new_book_5.title}", content_type: 'image/png')

  new_book_5.author = author_5
  new_book_5.user = new_user
  new_book_5.save!

highlight_62 = Highlight.new(
    content: "Such hierarchically restricted access to the CEO can’t be too different from what happens with other large companies, but the way to get admission to these high-level meetings at Apple had much less to do with your place on the org chart and much more to do with your ability to make the products better.",
    page: 428)
    highlight_62.user = new_user
    highlight_62.source = new_book_5
    highlight_62.save!

highlight_63 = Highlight.new(
    content: "This push for simplicity had a purpose. Even though he was a high-tech CEO, Steve could put himself in the shoes of customers, people who cared nothing for the ins and outs of the software industry. He never wanted Apple software to overload people, especially when they might already be stretched by the bustle of their everyday lives.",
    page: 444)
    highlight_63.user = new_user
    highlight_63.source = new_book_5
    highlight_63.save!

highlight_64 = Highlight.new(
    content: "Steve figured that the best way to answer difficult questions like these was to avoid the need to ask them.",
    page: 460)
    highlight_64.user = new_user
    highlight_64.source = new_book_5
    highlight_64.save!

highlight_65 = Highlight.new(
    content: "In the years since Richard showed me his browser demo, I’ve emulated his approach. When I make a demo, I think about the intended audience, and I make a specific decision about what features to include.",
    page: 789)
    highlight_65.user = new_user
    highlight_65.source = new_book_5
    highlight_65.save!

highlight_66 = Highlight.new(
    content: "Such connections of words to actions can be meaningful, and in our case they were, since the words led to the actions we used to make our product. This clear connection of words to actions in a product development cycle was new to me. We certainly never had anything like it at Eazel, my former company, and it made me wonder if this experience on Safari was a fluke.",
    page: 1330)
    highlight_66.user = new_user
    highlight_66.source = new_book_5
    highlight_66.save!


highlight_67 = Highlight.new(
    content: "The closest term we had in the Apple lexicon was more management speak: directly responsible individual (we pronounced it as D-R-I in conversation), the person who has to do whatever is necessary to develop a piece of hardware or software, some technology, some critically needed thing—the DRI was the person with their butt on the line.",
    page: 1453)
    highlight_67.user = new_user
    highlight_67.source = new_book_5
    highlight_67.save!

highlight_68 = Highlight.new(
    content: "“heisenbugs.”",
    page: 1501)
    highlight_68.user = new_user
    highlight_68.source = new_book_5
    highlight_68.save!

highlight_69 = Highlight.new(
    content: "Except for me. Henri said that Scott wanted me to be the DRI for keyboards.",
    page: 1880)
    highlight_69.user = new_user
    highlight_69.source = new_book_5
    highlight_69.save!

highlight_70 = Highlight.new(
    content: "Taste is developing a refined sense of judgment and finding the balance that produces a pleasing and integrated whole.",
    page: 2246,
    my_note: "#judgment")
    highlight_70.user = new_user
    highlight_70.source = new_book_5
    highlight_70.save!

highlight_71 = Highlight.new(
    content: "“Design is how it works.”",
    page: 2294)
    highlight_71.user = new_user
    highlight_71.source = new_book_5
    highlight_71.save!

highlight_72 = Highlight.new(
    content: "products must serve people.",
    page: 2793)
    highlight_72.user = new_user
    highlight_72.source = new_book_5
    highlight_72.save!

highlight_73 = Highlight.new(
    content: "The Magical Number Seven, Plus or Minus Two: Some Limits on Our Capacity for Processing Information,",
    page: 2896,
    my_note: "#limits")
    highlight_73.user = new_user
    highlight_73.source = new_book_5
    highlight_73.save!

puts "5. book done"

# 6 book
  author_6 = Author.create!(name: "Mike Isaac")
  new_book_6 = Source.new(
    title: "Super Pumped: The Battle for Uber",
    category: "book")
    image = URI.open("https://bilder.buecher.de/produkte/58/58566/58566784n.jpg")
    new_book_6.photo.attach(io: image, filename: "#{new_book_6.title}", content_type: 'image/png')

  new_book_6.author = author_6
  new_book_6.user = new_user
  new_book_6.save!


highlight_74 = Highlight.new(
    content: "down to it, would",
    page: 143,
    my_note: "#push")
    highlight_74.user = new_user
    highlight_74.source = new_book_6
    highlight_74.save!

highlight_76 = Highlight.new(
    content: "Customer Obsession Ownership Invent and Simplify Are Right, A Lot Learn and Be Curious Hire and Develop the Best Insist on the Highest Standards Think Big Bias for Action Frugality Earn Trust Dive Deep Have Backbone; Disagree and Commit Deliver Results",
    page: 344)
    highlight_76.user = new_user
    highlight_76.source = new_book_6
    highlight_76.save!

highlight_77 = Highlight.new(
    content: "But as one Uber employee competing with Lyft at the time said, “The law isn’t what is written. It’s what is enforced.”",
    page: 1424)
    highlight_77.user = new_user
    highlight_77.source = new_book_6
    highlight_77.save!

highlight_78 = Highlight.new(
    content: "Even during recruiting, prospective employees were treated poorly. The company had designed an algorithm that determined the lowest possible salary a candidate might accept before making an offer to them, a ruthlessly efficient technique that",
    page: 2089)
    highlight_78.user = new_user
    highlight_78.source = new_book_6
    highlight_78.save!

highlight_79 = Highlight.new(
    content: "“Heaven and Hell” were just the beginning. Those programs fell under the umbrella of “competitive intelligence”—a friendlier phrase than corporate surveillance—which was shortened to an even more genial acronym, COIN. Everyone in the Valley had a version of COIN, in one way or another. The most widely used form involved scraping competitor data from websites, apps, and other publicly available repositories.",
    page: 2534)
    highlight_79.user = new_user
    highlight_79.source = new_book_6
    highlight_79.save!

highlight_80 = Highlight.new(
    content: "Kalanick loved that fiery spirit, warm personality, resilient attitude, and the way she could speak to pretty much anyone.",
    page: 2736)
    highlight_80.user = new_user
    highlight_80.source = new_book_6
    highlight_80.save!

highlight_81 = Highlight.new(
    content: "To O’Sullivan’s amazement, people started tweeting their screenshots of their account deletions back to him. “You’re fascist colluding scabs,” one user’s screenshot said. “Taking advantage of the taxi strike in NYC is a disgusting example of predatory capitalism and collusion with an overtly fascist administration,” another user wrote, tweeting back at @Bro_Pair. Another person added: “Catch a rideshare to hell.”",
    page: 3140)
    highlight_81.user = new_user
    highlight_81.source = new_book_6
    highlight_81.save!

highlight_82 = Highlight.new(
    content: "Most immediately, those who retweeted him expressed anger towards the Trump administration and its discriminatory actions. But deleting Uber went beyond that; it became something people could do, an action they could broadcast as part of their protest, a repudiation of tech culture, of fake news, of Silicon Valley—the industry that many believed duped Americans into electing Trump in the first place. To #deleteUber wasn’t just to remove a ride-hailing app from one’s phone. It was also to give a giant middle finger to greed, to “bro culture,” to Big Tech—to everything the app stood for.",
    page: 3145)
    highlight_82.user = new_user
    highlight_82.source = new_book_6
    highlight_82.save!

highlight_83 = Highlight.new(
    content: "500,000 people deleted their Uber accounts entirely, not counting the incalculable others who simply deleted the app from their phones.",
    page: 3165)
    highlight_83.user = new_user
    highlight_83.source = new_book_6
    highlight_83.save!

highlight_84 = Highlight.new(
    content: "“sometimes it’s more important to show you care than to prove you’re right.”",
    page: 3987)
    highlight_84.user = new_user
    highlight_84.source = new_book_6
    highlight_84.save!

highlight_85 = Highlight.new(
    content: "“I’ll tell you what it shows,” Bonderman said. “It’s that it’s much likelier to be more talking on the board.”",
    page: 4111)
    highlight_85.user = new_user
    highlight_85.source = new_book_6
    highlight_85.save!

puts "6. book done"

# 7 book
  author_7 = Author.create!(name: "Carol S. Dweck")
  new_book_7 = Source.new(
    title: "Mindset: The New Psychology of Success (English Edition)",
    category: "book")
    image = URI.open("https://res.cloudinary.com/long-learning-company/image/upload/v1531986798/Pre-Order/10%20Awesome%20Books%20to%20Help%20You%20Communicate%20Better%20at%20Work/7.jpg")
    new_book_7.photo.attach(io: image, filename: "#{new_book_7.title}", content_type: 'image/png')

  new_book_7.author = author_7
  new_book_7.user = new_user
  new_book_7.save!

highlight_86 = Highlight.new(
    content: "Not only weren’t they discouraged by failure, they didn’t even think they were failing. They thought they were learning.",
    page: 102)
    highlight_86.user = new_user
    highlight_86.source = new_book_7
    highlight_86.save!

highlight_87 = Highlight.new(
    content: "What are the consequences of thinking that your intelligence or personality is something you can develop, as opposed to something that is a fixed, deep-seated trait?",
    page: 106)
    highlight_87.user = new_user
    highlight_87.source = new_book_7
    highlight_87.save!


highlight_88 = Highlight.new(
    content: "the view you adopt for yourself profoundly affects the way you lead your life.",
    page: 137)
    highlight_88.user = new_user
    highlight_88.source = new_book_7
    highlight_88.save!

highlight_89 = Highlight.new(
    content: "Why waste time proving over and over how great you are, when you could be getting better? Why hide deficiencies instead of overcoming them? Why look for friends or partners who will just shore up your self-esteem instead of ones who will also challenge you to grow?",
    page: 164)
    highlight_89.user = new_user
    highlight_89.source = new_book_7
    highlight_89.save!

highlight_90 = Highlight.new(
    content: "The passion for stretching yourself and sticking to it,",
    page: 166)
    highlight_90.user = new_user
    highlight_90.source = new_book_7
    highlight_90.save!

highlight_91 = Highlight.new(
    content: "work things out with my best friend the next time we speak.”",
    page: 198,
    my_note: "Also in the relationship. Speak abkoj it we all csn change")
    highlight_91.user = new_user
    highlight_91.source = new_book_7
    highlight_91.save!

highlight_92 = Highlight.new(
    content: "Think about someone you know who is steeped in the fixed mindset. Think about how they’re always trying to prove themselves and how they’re supersensitive about being wrong or making mistakes. Did you ever wonder why they were this way? (Are you this way?) Now you can begin to understand why.”",
    page: 283,
    my_note: "#mistake #mindset")
    highlight_92.user = new_user
    highlight_92.source = new_book_7
    highlight_92.save!

highlight_93 = Highlight.new(
    content: "In one world—the world of fixed traits—success is about proving you’re smart or talented. Validating yourself. In the other—the world of changing qualities—it’s about stretching yourself to learn something new. Developing yourself.",
    page: 309,
    my_note: "#change #learn")
    highlight_93.user = new_user
    highlight_93.source = new_book_7
    highlight_93.save!

highlight_94 = Highlight.new(
    content: "In one world, effort is a bad thing. It, like failure, means you’re not smart or talented. If you were, you wouldn’t need effort. In the other world, effort is what makes you smart or talented.",
    page: 314,
    my_note: "#effort")
    highlight_94.user = new_user
    highlight_94.source = new_book_7
    highlight_94.save!

highlight_95 = Highlight.new(
    content: "But for children with the growth mindset, success is about stretching themselves. It’s about becoming smarter.",
    page: 333,
    my_note: "#effort #mindset")
    highlight_95.user = new_user
    highlight_95.source = new_book_7
    highlight_95.save!

highlight_96 = Highlight.new(
    content: "“When you’re lying on your deathbed, one of the cool things to say is, ‘I really explored myself.’ This sense of urgency was instilled when my mom died. If you only go through life doing stuff that’s easy, shame on you.” So when wrestling presented a challenge, she was ready to take it on.",
    page: 409)
    highlight_96.user = new_user
    highlight_96.source = new_book_7
    highlight_96.save!

highlight_97 = Highlight.new(
    content: "Clearly, people with the growth mindset thrive when they’re stretching themselves.",
    page: 427,
    my_note: "#mindset")
    highlight_97.user = new_user
    highlight_97.source = new_book_7
    highlight_97.save!

highlight_98 = Highlight.new(
    content: "I’ll never forget the first time I heard myself say, “This is hard. This is fun.” That’s the moment I knew I was changing mindsets.",
    page: 452,
    my_note: "#mindset #change")
    highlight_98.user = new_user
    highlight_98.source = new_book_7
    highlight_98.save!

highlight_99 = Highlight.new(
    content: "When Do You Feel Smart: When You’re Flawless or When You’re Learning?",
    page: 453)
    highlight_99.user = new_user
    highlight_99.source = new_book_7
    highlight_99.save!

highlight_100 = Highlight.new(
    content: "Becoming is better than being.” The fixed mindset does not allow people the luxury of becoming. They have to already be.",
    page: 482)
    highlight_100.user = new_user
    highlight_100.source = new_book_7
    highlight_100.save!

highlight_101 = Highlight.new(
    content: "They gave this test the power to define them. That’s why every success is so important.",
    page: 506)
    highlight_101.user = new_user
    highlight_101.source = new_book_7
    highlight_101.save!

highlight_102 = Highlight.new(
    content: "People with the growth mindset know that it takes time for potential to flower.",
    page: 526)
    highlight_102.user = new_user
    highlight_102.source = new_book_7
    highlight_102.save!

highlight_103 = Highlight.new(
    content: "They were all rejecting the idea of fixed ability and selecting instead for mindset.",
    page: 546)
    highlight_103.user = new_user
    highlight_103.source = new_book_7
    highlight_103.save!

highlight_104 = Highlight.new(
    content: "problem is when special begins to mean better than others. A more valuable human being. A superior person. An entitled person.",
    page: 567)
    highlight_104.user = new_user
    highlight_104.source = new_book_7
    highlight_104.save!

highlight_105 = Highlight.new(
    content: "“I was shocked with the level of intensity my coming back to the game created….People were praising me like I was a religious cult or something. That was very embarrassing. I’m a human being like everyone else.” Jordan knew how hard he had worked to develop his abilities.",
    page: 588)
    highlight_105.user = new_user
    highlight_105.source = new_book_7
    highlight_105.save!

puts "7. book done"

# 8 book
  author_8 = Author.create!(name: "Tara Westover")
  new_book_8 = Source.new(
    title: "Educated: The international bestselling memoir (English Edition)",
    category: "book")
    image = URI.open("https://i.ebayimg.com/images/g/GAAAAOSwp7deurST/s-l640.jpg")
    new_book_8.photo.attach(io: image, filename: "#{new_book_8.title}", content_type: 'image/png')

  new_book_8.author = author_8
  new_book_8.user = new_user
  new_book_8.save!

  highlight_106 = Highlight.new(
    content: "Then she’d smile—not a soothing smile for someone else but a smile for herself, of baffled amusement, a smile that to me always seemed to say, Ain’t nothin’ funnier than real life, I tell you what.",
    page: 654)
    highlight_106.user = new_user
    highlight_106.source = new_book_8
    highlight_106.save!

  highlight_107 = Highlight.new(
    content: "The seed of curiosity had been planted; it needed nothing more than time and boredom to grow.",
    page: 1086)
    highlight_107.user = new_user
    highlight_107.source = new_book_8
    highlight_107.save!

  highlight_108 = Highlight.new(
    content: "that the odds are better if you rely only on yourself.",
    page: 1738,
    my_note: "Not myself any more")
    highlight_108.user = new_user
    highlight_108.source = new_book_8
    highlight_108.save!

  highlight_109 = Highlight.new(
    content: "He is looking at me strangely, as if to say, This is who you are. You’ve been pretending that you’re someone else. Someone better. But you are just this.",
    page: 3140)
    highlight_109.user = new_user
    highlight_109.source = new_book_8
    highlight_109.save!

  highlight_110 = Highlight.new(
    content: "I begin to reason with myself, to doubt whether I had spoken clearly: what had I whispered and what had I screamed? I decide that if I had asked differently, been more calm, he would have stopped. I write this until I believe it, which doesn’t take long because I want to believe it. It’s comforting to think the defect is mine, because that means it is under my power.",
    page: 3169)
    highlight_110.user = new_user
    highlight_110.source = new_book_8
    highlight_110.save!

  highlight_111 = Highlight.new(
    content: "began to experience the most powerful advantage of money: the ability to think of things besides money.",
    page: 3345)
    highlight_111.user = new_user
    highlight_111.source = new_book_8
    highlight_111.save!

 highlight_112 = Highlight.new(
    content: "I thought if I could accept that what they had written was not absolute but was the result of a biased process of conversation and revision, maybe I could reconcile myself with the fact that the history most people agreed upon was not the history I had been taught.",
    page: 3817)
    highlight_112.user = new_user
    highlight_112.source = new_book_8
    highlight_112.save!

 highlight_113 = Highlight.new(
    content: "To myself I pretended there were other reasons I couldn’t belong at Cambridge, reasons having to do with class and status: that it was because I was poor, had grown up poor. Because I could stand in the wind on the chapel roof and not tilt. That was the person who didn’t belong in Cambridge: the roofer, not the whore. I can go to school, I had written in my journal that very afternoon.",
    page: 3897)
    highlight_113.user = new_user
    highlight_113.source = new_book_8
    highlight_113.save!

  highlight_114 = Highlight.new(
    content: "“The most powerful determinant of who you are is inside you,” he said. “Professor Steinberg says this is Pygmalion. Think of the story, Tara.” He paused, his eyes fierce, his voice piercing. “She was just a cockney in a nice dress. Until she believed in herself. Then it didn’t matter what dress she wore.”",
    page: 3904)
    highlight_114.user = new_user
    highlight_114.source = new_book_8
    highlight_114.save!

  highlight_115 = Highlight.new(
    content: "He said positive liberty is self-mastery—the rule of the self, by the self. To have positive liberty, he explained, is to take control of one’s own mind; to be liberated from irrational fears and beliefs, from addictions, superstitions and all other forms of self-coercion.",
    page: 4064)
    highlight_115.user = new_user
    highlight_115.source = new_book_8
    highlight_115.save!

  highlight_116 = Highlight.new(
    content: "It was as if I had stepped through a mirror and was living a day in the life I might have had, if I’d stayed on the mountain. But I hadn’t stayed. My life had diverged from my sister’s, and it felt as though there was no common ground between us.",
    page: 4211)
    highlight_116.user = new_user
    highlight_116.source = new_book_8
    highlight_116.save!

  highlight_117 = Highlight.new(
    content: "But although I wished it were otherwise, I did not want to go home. I preferred the family I had chosen to the one I had been given, so the happier I became in Cambridge, the more my happiness was made fetid by my feeling that I had betrayed Buck’s Peak. That feeling became a physical part of me, something I could taste on my tongue or smell on my own breath.",
    page: 4440)
    highlight_117.user = new_user
    highlight_117.source = new_book_8
    highlight_117.save!

  highlight_118 = Highlight.new(
    content: "The thing about having a mental breakdown is that no matter how obvious it is that you’re having one, it is somehow not obvious to you. I’m fine, you think. So what if I watched TV for twenty-four straight hours yesterday. I’m not falling apart. I’m just lazy. Why it’s better to think yourself lazy than think yourself in distress, I’m not sure. But it was better. More than better: it was vital.",
    page: 4833)
    highlight_118.user = new_user
    highlight_118.source = new_book_8
    highlight_118.save!

  highlight_119 = Highlight.new(
    content: "decisions I made after that moment were not the ones she would have made. They were the choices of a changed person, a new self.",
    page: 5152,
    my_note: "#change")
    highlight_119.user = new_user
    highlight_119.source = new_book_8
    highlight_119.save!

puts "8. book done"
# 9 book
  author_9 = Author.create!(name: "Gayle Laakmann McDowell and Jackie Bavaro")
  new_book_9 = Source.new(
    title: "Cracking the PM Interview: How to Land a Product Manager Job in Technology (English Edition)",
    category: "book")
    image = URI.open("https://prodimage.images-bn.com/pimages/9780984782819_p0_v1_s1200x630.jpg")
    new_book_9.photo.attach(io: image, filename: "#{new_book_9.title}", content_type: 'image/png')

  new_book_9.author = author_9
  new_book_9.user = new_user
  new_book_9.save!


  highlight_120 = Highlight.new(
    content: "PMs are expected to think about strategy for their teams, for example, which customers and areas to focus on.",
    page: 30)
    highlight_120.user = new_user
    highlight_120.source = new_book_9
    highlight_120.save!

 highlight_121 = Highlight.new(
    content: "Great PMs at these companies influence strategy by pitching their ideas to executives and winning them over.",
    page: 30)
    highlight_121.user = new_user
    highlight_121.source = new_book_9
    highlight_121.save!

  highlight_122 = Highlight.new(
    content: "The top-down vision makes it hard to make big changes in direction in the middle of a launch cycle. Even if the idea is great, it’s hard to find developers with spare time to build it. On the other hand, you’re generally working on features that everyone agrees are important. This means that you can spend your energy trying to build something great instead of convincing management to let you launch the great thing you built.",
    page: 34)
    highlight_122.user = new_user
    highlight_122.source = new_book_9
    highlight_122.save!

  highlight_123 = Highlight.new(
    content: "Coding skills are great—often required, in fact—but they’re not sufficient. Find a way to show leadership, business skills, and initiative.",
    page: 51)
    highlight_123.user = new_user
    highlight_123.source = new_book_9
    highlight_123.save!

  highlight_124 = Highlight.new(
    content: "An MBA isn’t a requirement for product management, and at some startups it might even count against you. On the other hand, teams with more of a business focus consider an MBA a real asset, and some companies, such as Amazon, explicitly focus on hiring MBAs.",
    page: 52)
    highlight_124.user = new_user
    highlight_124.source = new_book_9
    highlight_124.save!

  highlight_125 = Highlight.new(
    content: "Instead of guessing what users would want, he started thinking about which metrics he wanted to drive.",
    page: 52)
    highlight_125.user = new_user
    highlight_125.source = new_book_9
    highlight_125.save!

  highlight_126 = Highlight.new(
    content: "As a product manager, you need to let go of that instinct and allow yourself to envision a world where you’ve made the impossible happen.",
    page: 56)
    highlight_126.user = new_user
    highlight_126.source = new_book_9
    highlight_126.save!

  highlight_127 = Highlight.new(
    content: "Teams need product managers who can lead them into the future, building things that have never been built before.",
    page: 56)
    highlight_127.user = new_user
    highlight_127.source = new_book_9
    highlight_127.save!

  highlight_128 = Highlight.new(
    content: "Credibility is the currency of the PM role.",
    page: 57)
    highlight_128.user = new_user
    highlight_128.source = new_book_9
    highlight_128.save!

  highlight_129 = Highlight.new(
    content: "It’s your job to cut through the ambiguity to help the team get moving.",
    page: 57)
    highlight_129.user = new_user
    highlight_129.source = new_book_9
    highlight_129.save!

  highlight_130 = Highlight.new(
    content: "A great way to hone your prioritization sense is to follow up on your designs after they’ve launched. See if you can talk to customers or read support tickets to learn if your prioritization was right.",
    page: 61)
    highlight_130.user = new_user
    highlight_130.source = new_book_9
    highlight_130.save!

  highlight_131 = Highlight.new(
    content: "Your side project should be listed on your resume as well as on your website, if you have one. It’s great if your side projects were successful, but just having done something shows a lot. Don’t be afraid to list “unsuccessful” side projects.",
    page: 66)
    highlight_131.user = new_user
    highlight_131.source = new_book_9
    highlight_131.save!

  highlight_132 = Highlight.new(
    content: "What are the five things you are most proud of? What would your team say are the five most impactful things you did? The answers to these questions should form your bullets.",
    page: 108)
    highlight_132.user = new_user
    highlight_132.source = new_book_9
    highlight_132.save!

puts "9. book done"

# 10 book
  author_10 = Author.create!(name: "Marc Brackett,Ph.D.")
  new_book_10 = Source.new(
    title: "Permission to Feel: Unlocking the Power of Emotions to Help Our Kids, Ourselves, and Our Society Thrive (English Edition)",
    category: "book")
    image = URI.open("https://bilder.buecher.de/produkte/57/57505/57505495n.jpg")
    new_book_10.photo.attach(io: image, filename: "#{new_book_10.title}", content_type: 'image/png')

  new_book_10.author = author_10
  new_book_10.user = new_user
  new_book_10.save!

highlight_133 = Highlight.new(
    content: "My message for everyone is the same: that if we can learn to identify, express, and harness our feelings, even the most challenging ones, we can use those emotions to help us create positive, satisfying lives.",
    page: 142)
    highlight_133.user = new_user
    highlight_133.source = new_book_10
    highlight_133.save!

highlight_134 = Highlight.new(
    content: "The irony, though, is that when we ignore our feelings, or suppress them, they only become stronger. The really powerful emotions build up inside us, like a dark force that inevitably poisons everything we do, whether we like it or not. Hurt feelings don’t vanish on their own. They don’t heal themselves. If we don’t express our emotions, they pile up like a debt that will eventually come due.",
    page: 176)
    highlight_134.user = new_user
    highlight_134.source = new_book_10
    highlight_134.save!

highlight_135 = Highlight.new(
    content: "American youths now rank in the bottom quarter among developed nations in well-being and life satisfaction, according to a report by UNICEF. Research shows that our youths have stress levels that surpass those of adults.",
    page: 188)
    highlight_135.user = new_user
    highlight_135.source = new_book_10
    highlight_135.save!

puts "10. book done"

# 11 book
  author_11 = Author.create!(name: "Ken Robinson")
  new_book_11 = Source.new(
    title: "Out of Our Minds: Learning to be Creative"
    category: "book")
    image = URI.open("https://bilder.buecher.de/produkte/44/44606/44606574n.jpg")
    new_book_11.photo.attach(io: image, filename: "#{new_book_11.title}", content_type: 'image/png')

  new_book_11.author = author_11
  new_book_11.user = new_user
  new_book_11.save!

  highlight_136 = Highlight.new(
    content: "If we could all come to see our consumer products as tools that help us to live our real lives—rather than as substitutes and surrogates for that life—we would need many fewer products to be happy. And we would keep the ones we already have for longer.",
    page: 173)
    highlight_136.user = new_user
    highlight_136.source = new_book_11
    highlight_136.save!

  highlight_137 = Highlight.new(
    content: "To know and not to do is not to know. —Wang Yang Ming",
    page: 182)
    highlight_137.user = new_user
    highlight_137.source = new_book_11
    highlight_137.save!

  highlight_138 = Highlight.new(
    content: "We have no intention to sell out or to become a public company, which would compromise on our mission “to use business to inspire and implement solutions to the environmental crisis.”",
    page: 192)
    highlight_138.user = new_user
    highlight_138.source = new_book_11
    highlight_138.save!

 highlight_139 = Highlight.new(
    content: "I believe I inherited his love of hard physical work and an appreciation of quality, particularly of fine tools.",
    page: 261)
    highlight_139.user = new_user
    highlight_139.source = new_book_11
    highlight_139.save!

  highlight_140 = Highlight.new(
    content: "We auctioned off all our possessions, including the hand-built furniture my father had made, and one traumatic day the six of us piled into the family Chrysler and drove west.",
    page: 272)
    highlight_140.user = new_user
    highlight_140.source = new_book_11
    highlight_140.save!

  highlight_141 = Highlight.new(
    content: "Before the other kids in my neighborhood were even allowed to cross the street on their own, I was bicycling seven or eight miles to reach a lake on a private golf course, where I hid in the willows away from the guards and fished for bluegills and bass.",
    page: 289)
    highlight_141.user = new_user
    highlight_141.source = new_book_11
    highlight_141.save!

 highlight_142 = Highlight.new(
    content: "I learned at an early age that it’s better to invent your own game; then you can always be a winner.",
    page: 297)
    highlight_142.user = new_user
    highlight_142.source = new_book_11
    highlight_142.save!

 highlight_143 = Highlight.new(
    content: "but we did know how to make things functional, tough, and simple—just",
    page: 626)
    highlight_143.user = new_user
    highlight_143.source = new_book_11
    highlight_143.save!

 highlight_144 = Highlight.new(
    content: "“Here’s Patagonia. Here’s Chouinard Equipment. Do with them what you will. I’m going climbing.”",
    page: 676)
    highlight_144.user = new_user
    highlight_144.source = new_book_11
    highlight_144.save!

  highlight_145 = Highlight.new(
    content: "I was especially interested in books on Japanese or Scandinavian styles of management because I knew the American way of doing business offered only one of many possible routes.",
    page: 723)
    highlight_145.user = new_user
    highlight_145.source = new_book_11
    highlight_145.save!

  highlight_146 = Highlight.new(
    content: "He was the one who introduced me to the remote region of Chile and Argentina called Patagonia in 1968, after he had sold the North Face, and in fact it was while we were on that trip that Susie and a friend started the business Plain Jane, which became Esprit.",
    page: 728)
    highlight_146.user = new_user
    highlight_146.source = new_book_11
    highlight_146.save!

  highlight_147 = Highlight.new(
    content: "all our decisions as though we would be in business for a hundred years. We would grow only at a rate we could sustain for that long.",
    page: 1100)
    highlight_147.user = new_user
    highlight_147.source = new_book_11
    highlight_147.save!

  highlight_148 = Highlight.new(
    content: "We envision the future of Patagonia to be a balance between mountain and wilderness activities and ocean- and water-related sports.",
    page: 1160)
    highlight_148.user = new_user
    highlight_148.source = new_book_11
    highlight_148.save!

  highlight_149 = Highlight.new(
    content: "At our headquarters in Ventura, California, we built a three-story office building using 95 percent recycled materials. There are solar panels on the roofs and over the parking lots.",
    page: 1163)
    highlight_149.user = new_user
    highlight_149.source = new_book_11
    highlight_149.save!

  highlight_150 = Highlight.new(
    content: "“Make the best product, cause no unnecessary harm, and use business to inspire and implement solutions to the environmental crisis.”",
    page: 1181)
    highlight_150.user = new_user
    highlight_150.source = new_book_11
    highlight_150.save!

  puts "11. book done - books done, 150 highlights"

# articles
# 1 article
  author_11 = Author.create!(name: "Kate Hollowood")
  new_article = Source.new(
      title: "In praise of doing nothing: How to turn boredom into brilliant ideas",
      publishing_year: "2019",
      category: "article")
      image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678356/1.1_vaemxa.png")
      new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

  new_article.author = author_1
  new_article.user = new_user
  new_article.save!

  # 2 article
  author_12 = Author.create!(name: "Naresh Ramchandani")
  new_article = Source.new(
    title: "The climate crisis is daunting, but as a creative professional, there’s much you can do",
    publishing_year: "2019",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678354/2.2_ud77ra.png")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_2
    new_article.user = new_user
    new_article.save!

  # 3 article
  author_13 = Author.create!(name: "Lucy Bourton")
  new_article = Source.new(
    title: "The system of learning new creative skills is broken – so how can it evolve?",
    publishing_year: "2019",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678559/3.3_zfzktq.png")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_3
    new_article.user = new_user
    new_article.save!

  # 4 article
  author_14 = Author.create!(name: "Ed Baldwin")
  new_article = Source.new(
    title: "Busy is the New Stupid",
    publishing_year: "2016",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678263/4.4_mgmj9a.jpg")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_4
    new_article.user = new_user
    new_article.save!

  # 5 article
  author_15 = Author.create!(name: "Katya Andresen")
  new_article = Source.new(
    title: "What's missing in leadership is what's missing in ourselves",
    publishing_year: "2017",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678266/5.5_kpynop.jpg")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_5
    new_article.user = new_user
    new_article.save!

  # 6 article
  author_6 = Author.create!(name: "Charlotte Alter, Suyin Haynes, Justin Worland")
  new_article = Source.new(
    title: "Time 2019 Person of the Year: Greta Thunberg",
    publishing_year: "2019",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678345/6.6_dqhwii.png")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_6
    new_article.user = new_user
    new_article.save!

  # 7 article
  author_7 = Author.create!(name: "Eddie S. Glaude, Jr.")
  new_article = Source.new(
    title: "The History That James Baldwin Wanted America to See",
    publishing_year: "2020",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678314/7.7_sidtba.jpg")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_7
    new_article.user = new_user
    new_article.save!

  # 8 article
  author_8 = Author.create!(name: "Lauren Martin")
  new_article = Source.new(
    title: "Patti Smith’s Advice On Following The Road Less Traveled",
    publishing_year: "2017",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678278/7.7_tnhw34.jpg")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_8
    new_article.user = new_user
    new_article.save!

  # 9 article
  author_9 = Author.create!(name: "Laura M. Halson")
  new_article = Source.new(
    title: "Are We Living in a Post-Happiness World?",
    publishing_year: "2019",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678282/9.9_jqb6hv.png")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_9
    new_article.user = new_user
    new_article.save!

  # 10 article
  author_10 = Author.create!(name: "Lauren Martin")
  new_article = Source.new(
    title: "Bethenny Frankel: 14 Rules For Getting Everything You Want",
    publishing_year: "2017",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678288/10.10_r3o5uy.jpg")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_10
    new_article.user = new_user
    new_article.save!



new_user.favorite(highlight_1)
new_user.favorite(highlight_6)
new_user.favorite(highlight_10)
new_user.favorite(highlight_33)
new_user.favorite(highlight_76)
new_user.save!

puts "Done!"
