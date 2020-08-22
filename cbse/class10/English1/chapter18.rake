
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'WILLIAM BUTLER YEATS', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "For Anne Gregory", audio_link: 'chapter1.mp3')
        sections = ['“Never shall a young man',
                    'Thrown into despair',
                    'By those great honey-coloured',
                    'Ramparts at your ear',
                     'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What does the young man mean by “great honey-coloured /Ramparts at your ear?” Why does he say that young men are “thrown into despair” by them?',
                    'Q2: What colour is the young woman’s hair? What does she say she can change it to? Why would she want to do so?',
                    'Q3: Objects have qualities which make them desirable to others. Can you think of some objects (a car, a phone, a dress…) and say what qualities make one object more desirable than another? Imagine you were trying to sell an object: what qualities would you emphasise?',
                    'Q4: You have perhaps concluded that people are not objects to be valued for their qualities or riches rather than for themselves. But elsewhere Yeats asks the question: How can we separate the dancer from the dance? Is it possible to separate ‘the person himself or herself’ from how the person looks, sounds, walks, and so on? Think of how you or a friend or member of your family has changed over the years. Has your relationship also changed? In what way?',
                     ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
