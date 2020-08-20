
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: '[A Kannada folktale from A.K. Ramanujan’s Folk Tales from India]', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "In the Kingdom of Fools", audio_link: 'chapter1.mp3')
        sections = ['IN the Kingdom of Fools, both the king and the minister were idiots.They didn’t want to run things like other kings, so they decided to change night into day and day into night. They ordered that everyone should be awake at night, till their fields and run their businesses only after dark, and go to bed as soon as the sun came up. Anyone who disobeyed would be punished with death. The people did as they were told for fear of death. The king and the minister were delighted at the success of their project. One day a guru and his disciple arrived in the city. It was a beautiful city, it was broad daylight, but there was no one about. Everyone was asleep, not a mouse stirring. Even the cattle had been taught to sleep by day.The two strangers were amazed by what they saw around them and wandered around town till evening, when suddenly the whole town woke up and went about its nightly business.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1: What are the two strange things the guru and his disciple find in the Kingdom of Fools?',
                    'Q2: Why does the disciple decide to stay in the Kingdom of Fools? Is it a good idea?',
                    'Q3: Name all the people who are tried in the king’s court, and give the reasons for their trial.',
                    'Q4: Who is the real culprit according to the king? Why does he escape punishment?',
                    'Q5: What are the Guru’s words of wisdom? When does the disciple remember them?',
                   
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
