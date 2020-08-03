
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "HOW THE CAMEL GOT HIS HUMP", audio_link: 'chapter1.mp3')
        sections = ['Paheli and Boojho visited their grandparents\' village during summer break. After dinner, they went on to the roof of the house. It was a clear cloudless night. They were surprised to see a large number of bright stars in the sky. They had never seen such a beautiful scene in their city (Fig. 17.1)',
                    'Paheli wondered, why the village sky was so different from the night sky in big cities? Her grandfather explained that due to bright light, smoke and dust, sky in big cities is rarely clear. Night sky watching can be a fascinating experience at a place where there are no bright lights and the atmosphere is clear.',
                    'Look at the sky on a dark, clear night. You see the entire sky dotted with countless stars, some bright and some not so bright. Observe them carefully. Do all of them appear to twinkle? Do you find any star-like object which does not twinkle? The objects which do not twinkle are planets.',
                    'The moon is the brightest object in the night sky. The stars, the planets, the moon and many other objects in the sky are called celestial objects.',
                    '',
                    'Are all celestial objects similar? Let us find out.',
                    '',
                    '17.1 The MoonIs there a change in the shape of the moon everyday? Are there days when the shape of the moon appears to be perfectly round? Are there days when the moon cannot be seen at all even if the sky is clear?',
                    'The day on which the whole disc of the moon is visible is known as the full moon day. Thereafter, every night the size of the bright part of the moon appears to become thinner and thinner. On the fifteenth day the moon is not visible. This day is known as the new moon day. The next day, only a small portion of the moon appears in the sky. This is known as the crescent moon. Then again the moon grows larger every day. On the fifteenth day once again we get a full view of the moon.',
                    'The various shapes of the bright part of the moon as seen during a month are called phases of the moon (Fig. 17.2).',
                    '',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  ',
                    'Q2:  ',
                    'Q3:  ',
                    'Q4:  ',
                    'Q5:  ',
                    'Q6:  ',
                    'Q7:  ',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
