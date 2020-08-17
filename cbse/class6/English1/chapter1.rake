
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Rudyard Kipling', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Who Did Patrick's Homework?", audio_link: 'chapter1.mp3')
        sections = ['PATRICK never did homework. “Too boring,” he said. He played hockey and basketball and Nintendo instead.His teachers told him, “Patrick! Do your homework or you won’t learn a thing.” And it’s true, sometimes he did feel like an ignoramus. But what could he do? He hated homework.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  What did Patrick think his cat was playing with? What was it really?",
                    "Q2:  Why did the little man grant Patrick a wish?",
                    "Q3:  What was Patrick’s wish? ",
                    "Q4:  In what subjects did the little man need help, to do Patrick’s homework?",
                    "Q5:  How did Patrick help him?",
                    "Q6:  Who do you think did Patrick’s homework — the little man, or Patrick himself?",
                    "Q7:  This story has a lot of rhyming words, as a poem does. Can you write out some parts of it like a poem, so that the rhymes come at the end of separate lines? For example: patrick never did homework. “Too boring,” he said. He played baseball and hockey and Nintendo instead."
                 
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
