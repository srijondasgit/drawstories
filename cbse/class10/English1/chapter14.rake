
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'CARL SANDBURG', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Fog", audio_link: 'chapter1.mp3')
        sections = ['The fog comes',
                    'on little cat feet.',
                    'It sits looking',
                    'over harbour and city',
                     'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What does Sandburg think the fog is like?',
                    'Q2:  How does the fog come?',
                    'Q3:  What does ‘it’ in the third line refer to?',
                    'Q4:  Does the poet actually say that the fog is like a cat? Find three things that tell us that the fog is like a cat.',
                     ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
