
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: ' EDWARD THOMAS ', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Wonder Called Sleep",
                    audio_link: 'chapter1.mp3')
        sections = [   "WE know enough about what sleep is, though we don’t know what exactly causes sleep. Sleep is a state of rest — an unconscious rest. When we sleep, our body recovers from fatigue caused by the day’s activities. After a good sleep and the rest that it gives, we become alert and active again, ready for the normal activities of the day.",
                    'Please refer your text book for the rest of the course',
                    ] 
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end

                  questions = [
                    "Q1: What is the most obvious advantage of sleep? ",
                    "Q2: What happens to our body when we sleep?",
                    "Q3: Define a dream in your own words ",
                    "Q4: Why are dreams important? Mention two reasons.",
                    "Q5:Why has sleep been called a wonder?",
                      ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
