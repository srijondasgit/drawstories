
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Nelson Rolihlahala Mandela', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Nelson Mandela Long Walk to Freedom", audio_link: 'chapter1.mp3')
        sections = ['TENTH May dawned bright and clear. For the past few days I had been pleasantly besieged by dignitaries and world leaders who were coming to pay their respects before the inauguration. The inauguration would be the largest gathering ever of international leaders on South African soil.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Why did such a large number of international leaders attend the inauguration? What did it signify the triumph of?',
                    'Q2:  What does Mandela mean when he says he is “simply the sum of all those African patriots” who had gone before him?',
                    'Q3:  Would you agree that the “depths of oppression” create “heights of character”? How does Mandela illustrate this? Can you add your own examples to this argument?',
                    'Q4:  How did Mandela’s understanding of freedom change with age and experience?',
                    'Q5:  How did Mandela’s ‘hunger for freedom’ change his life?',
                    
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
