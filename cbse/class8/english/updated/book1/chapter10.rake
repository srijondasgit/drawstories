
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'NATHANIEL HAWTHORNE', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Great Stone Face - II", audio_link: 'chapter1.mp3')
        sections = ['While Ernest had been growing old, God had granted a new poet to this earth. He, too, was a native of the valley, but had spent the greater part of his life in distant cities, pouring out his sweet music everywhere. Neither was the Great Stone Face forgotten, for the poet had celebrated it in a poem. The songs of this poet found their way to Ernest. He read them after his customary toil, seated on the bench before his cottage door. As he read he lifted his eyes to the mountain.',
                    '“O Great Stone Face,” he said, “is not this man worthy to be your likeness?”The face seemed to smile, but did not answer.',
                    'Now it happened that the poet, though he lived so far away, had not only heard of Ernest but had thought much about his character and wished to meet this man whose wisdom walked hand in hand with the noble simplicity of his life. One summer day, therefore, he arrived at Ernest\'s door, where he found the good old man holding a book in his hand, which he read and, then, with a finger between the leaves, looked lovingly at the Great Stone Face.',
                    '“Good evening,” said the poet. “Can you give a traveller a night\'s shelter?”“Gladly,” answered Ernest; and then he added, smiling, “I think I never saw the Great Stone Face look so hospitably at a stranger.”The poet sat down beside him, and he and Ernest talked together. Never before had the poet talked with a man like Ernest, so wise, and gentle, and kind. Ernest, on the other hand, was moved by the living images flung out of the poet\'s mind.',
                    'As Ernest listened to the poet, he imagined that the Great Stone Face was bending forward to listen too. He gazed into the poet\'s eyes.',
                    '“Who are you, my gifted guest?” he asked.',
                    'The poet laid his finger on the book that Ernest had been reading.',
                    '“You have read these poems,” said he. “You know me, then, for I wrote them.”Again and again, Ernest examined the poet\'s features; he turned towards the Great Stone Face then back. He shook his head and sighed.',
                    '“Why are you sad?” inquired the poet.',
                    '“Because,” replied Ernest, “all through life I haveawaited the fulfillment of a prophecy, and when I read these poems, I hoped that it might be fulfilled in you.”“You hoped,” answered the poet, faintly smiling, “to find in me the likeness of the Great Stone Face. I am not worthy to be its likeness.”“And why not?” asked Ernest. He pointed to the book. “Are not those thoughts worthy?”“You can hear in them the distant voice of a heavenly song. But my life, dear Ernest, has not corresponded with my thoughts. I have had grand dreams, but they have been only dreams. Sometimes I lack faith in my own thoughts. Why, then, pure seeker of the good and true, should you hope to find me in the face of the mountain?”The poet spoke sadly and his eyes were wet with tears. So, too, were those of Ernest.',
                    'At the hour of sunset, as had long been his custom, Ernest was to speak to a group of neighbours in the open air. Together he and the poet went to the meeting place, arm in arm. From there could be seen the Great Stone Face.',
                    'Ernest threw a look of familiar kindness around upon his audience. He began to speak to the people what was in his heart and mind. His words had power, because they agreed with his thoughts; and his thoughts had reality and depth, because they harmonised with the life which he had always lived. It was not mere breath that the preacher uttered; they were the words of life. A life of good deeds and selfless love was melted into them. The poet, as he listened, felt that the life and character of Ernest were a nobler strain of poetry than he had ever written. His eyes filled with tears and he said to himself that never was there so worthy a sage as that mild, sweet, thoughtful face, with the glory of white hair diffused about it.',
                    'At a distance, but clearly to be seen, high up in the golden light of the setting sun, appeared the Great Stone Face, with white mists around it, like the white hairs around the brow of Ernest. At that moment, Ernest\'s face took on an expression so grand that the poet was moved to throw his arms up and shout. “Behold! Behold!Ernest is himself the likeness of the Great Stone Face!” Then all the people looked, and saw that what the poet said was true. The prophecy was fulfilled. But Ernest, having finished what he had to say, took the poet\'s arm, and walked slowly homeward, still hoping that some wiser and better man than himself would by and by appear, bearing a resemblance to the Great Stone Face.',
                    
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  How was Ernest different from others in the valley?",
                    "Q2:  Why did Ernest think the poet was like the Stone Face?",
                    "Q3:  What did the poet himself say about his thoughts and poems?",
                    "Q4:  What made the poet proclaim Ernest was the Stone Face?",
                    "Q5:   Who, by common consent, turned out to be like the Great Stone Face? ",
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
