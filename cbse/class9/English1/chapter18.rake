
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'W.W.E. ROSS', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Snake Trying", audio_link: 'chapter1.mp3')
        sections = ['The snake trying',
                    'to escape the pursuing stick,',
                    'with sudden curvings of thin',
                    'long body. How beautiful',
                     'and graceful are his shapes!',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What is the snake trying to escape from?',
                    'Q2:  Is it a harmful snake? What is its colour?',
                    'Q3:  The poet finds the snake beautiful. Find the words he uses to convey its beauty',
                    'Q4:  What does the poet wish for the snake?',
                    'Q5:  Where was the snake before anyone saw it and chased it away? Where does the snake disappear?',
                    
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
