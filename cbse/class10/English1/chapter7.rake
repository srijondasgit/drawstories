
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'JOHN BERRYMAN', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Ball Poem", audio_link: 'chapter1.mp3')
        sections = ['What is the boy now, who has lost his ball,',
                    'What, what is he to do? I saw it go',
                    'Merrily bouncing, down the street, and then',
                    'Merrily over — there it is in the water!',
                     'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Why does the poet say, “I would not intrude on him”? Why doesn’t he offer him money to buy another ball?',
                    'Q2:  “… staring down/All his young days into the harbour where/His ball went …” Do you think the boy has had the ball for a long time? Is it linked to the memories of days when he played with it?',
                    'Q3:  What does “in the world of possessions” mean?',
                    'Q4:  Do you think the boy has lost anything earlier? Pick out the words that suggest the answer.',
                    'Q5:  What does the poet say the boy is learning from the loss of the ball? Try to explain this in your own words',
                    'Q6:  Have you ever lost something you liked very much? Write a paragraph describing how you felt then, and saying whether — and how — you got over your loss.',
                         ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
