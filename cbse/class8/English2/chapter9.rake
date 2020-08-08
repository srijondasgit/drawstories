
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'NATHANIEL HAWTHORNE', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Great Stone Face - I", audio_link: 'chapter1.mp3')
        sections = ['One afternoon, when the sun was going down, a mother and her little boy sat at the door of their cottage, talking about the Great Stone Face. They had only to lift their eyes and there it was, plain to be seen, though miles away, with the sunshine brightening all its features.',
                    'And what was the Great Stone Face?',
                    ' The Great Stone Face was a work of nature, formed on the perpendicular side of a mountain by some immense rocks, which had been thrown together so that, when viewed at a proper distance, they resembled the features of a human face. If the spectator approached too near, he lost the outline of the enormous face and could see only a heap of gigantic rocks, piled one upon another. But seen from a distance, the clouds clustering about it, the Great Stone Face seemed positively to be alive. It was the belief of many people that the valley owed much of its fertility to the benign face that was continually beaming over it.',
                    'A mother and her little boy, as we said earlier, sat at the door of their cottage, gazing at the Great Stone Face and talking about it. The child\'s name was Ernest.',
                    '“Mother,” said he, while the Great Face smiled on him, “I wish that it could speak, for it looks so very kindly that its voice must indeed be pleasant. If I ever see a man with such a face, I should love him very much.”“If an old prophecy should come to pass,” answered his mother, “we may see a man some time, with exactly such a face as that.”“What prophecy do you mean, dear Mother?” eagerly inquired Ernest. “Please tell me about it.”So his mother told him a story that her own mother had told her, when she herself was younger than little Ernest; that, at some future day, a child should be bornnear here, who was destined to become the greatest and noblest person of his time and whose face, in manhood, should bear an exact resemblance to the Great Stone Face. Many still had faith in this old prophecy. But others took it to be nothing but idle talk. At all events the great man of the prophecy had not yet appeared.',
                    '“O, Mother,” cried Ernest, clapping his hands above his head, “I do hope that I shall live to see him!”His mother was an affectionate and thoughtful woman. It was proper, she thought, not to discourage the fanciful hopes of her little boy. So she said to him, “Perhaps you may.”And Ernest never forgot the story that his mother told him. It was always in his mind whenever he looked upon the Great Stone Face. He spent his childhood in the log-cottage where he was born, was dutiful to his mother and helpful to her in many things, assisting her much with his little hands, and more with his loving heart. In this manner, from a happy yet often pensive child he grew up to be a mild and quiet youth.',
                    'Ernest had had no teacher, but the Great Stone Face became one to him. When the work of the day was over, he would gaze at it for hours, until he began to imagine that those vast features recognised him, and gave him a smile of kindness and encouragement.',
                    'About this time there went a rumour throughout the valley that the great man, who was to bear a resemblance to the Great Stone Face, had appeared at last. It seems that, many years before, a young man had left the valley and settled at a distant seaport. Gathergold, which was his name, had set up as a shopkeeper and, being sharp in business matters, had become so very rich that it would have taken him a hundred years only to count his wealth. In time he thought of his native valley, and decided to go back there, and end his days where he had been born.',
                    'Ernest had been deeply stirred by the idea that the great man, the noble man, the man of prophecy, after so many ages of delay, was at length to be seen in his native valley. While the boy was still gazing up the valley one day and imagining that the Great Stone Face returned his gaze, the noise of wheels was heard, and a crowd of people cried. “Here comes the great Mr Gathergold.”A carriage, drawn by four horses, dashed round the turn of the road. Within it, thrust partly out of the window appeared the face of an old man with yellow skin.',
                    '“The very image of the Great Stone Face!” shouted the people. “Sure enough, the old prophecy is true. Here we have the great man, at last!”And, what greatly puzzled Ernest, they seemed actually to believe that here was the likeness which they spoke of. He turned away sadly from the wrinkled shrewdness of that unpleasant face, and gazed up the valley, where the Stone Face seemed to say: He will come! Fear not, Ernest; the man will come!The years went on, and Ernest grew to be a young man. He attracted little notice from the inhabitants of the valley. They saw nothing remarkable in his way of life, except that, when the labour of the day was over, he still loved to gaze upon the Great Stone Face. Their idea was that this was a folly, but pardonable, because Ernest was industrious, kind and neighbourly. They did not know that the Great Stone Face had become a teacher to him, and that the sentiment which was expressed in it would enlarge the young man\'s heart, and fill it with deeper sympathies than other hearts. They did not know that from this would come a better wisdom than could be learnt from books. Neither did Ernest know that the thoughts which came to him sonaturally, in the fields and at the fireside, were of a higher tone than those which all men shared with him. A simple soul — simple as when his mother first told him the old story — he beheld the marvellous face looking down the valley, and still wondered, why its human likeness was so long in coming.',
                    'By this time poor Mr Gathergold was dead and buried. His wealth, which was the body and spirit of his existence, had disappeared before his death. Since the melting away of his gold, it had been generally agreed that there was no great likeness, after all, between the ruined merchant and the majestic face upon the mountain.',
                    'It so happened that another son of the valley had become a soldier many years before. After a great deal of hard fighting, he was now a famous commander. He was known on the battlefield by the name of Blood-and- Thunder. Old and tired now, he had lately expressed a desire to return to his native valley. The inhabitants, his old neighbours and their grown up children, prepared to welcome the renowned commander. It was being said that at last the likeness of the Great Stone Face had actually appeared. Great, therefore, was the excitement throughout the valley, and many people who had never once thought of glancing at the Great Stone Face now spent much time in gazing at it, for the sake of knowing exactly how General Blood-and-Thunder looked.',
                    'On the day of the general\'s arrival, Ernest and all the other people of the valley left their work, and proceeded to the spot where a great banquet had been prepared. Soldiers stood on guard, flags waved and the crowd roared. Ernest was standing too far back to see Blood-and-Thunder\'s face. However, he could hear several voices.',
                    '“It\'s the same face, exactly!” cried one man, dancing for joy.',
                    '“Wonderfully like it, that\'s a fact!” replied another.',
                    '“And why not?” cried a third; “he\'s the greatest man of this or any other age, beyond a doubt.”Ernest at last couldsee the general\'s face;and in the sameglance, to the side, hecould also see theGreat Stone Face. Ifthere was such alikeness as the crowdproclaimed, Ernest could not recognise it.',
                    '“Fear not, Ernest,” said his heart, as if the Great Stone Face was whispering to him, “fear not, Ernest; he will come.”',           
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  What was the story attributed to the Stone Face?",
                    "Q2:  What gave the people of the valley the idea that the prophecy was about to come true for the first time?",
                    "Q3:  Imagine you are Ernest. Write the story that his mother told him. Begin like this: My mother and I were sitting at the door of our cottage. We were looking at the Great Stone Face. I asked her if she had ever seen any one who looked like the Stone Face. Then she told me this story.",
                    "Q4:  (i) Did Ernest see in Gathergold the likeness of the Stone Face?  (ii) Who did he confide in and how was he proved right?",
                    "Q5:  (i) What made people believe General Blood-and-Thunder was their man? (ii) Ernest compared the man’s face with the Stone Face. What did he conclude? ",
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
