
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'E.V. LUCAS', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "A Different Kind of School",
         audio_link: 'chapter1.mp3')
        sections = ['I HAD heard a great deal about Miss Beam’s school, but not till last week did the chance come to visit it', 
                    
                     'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  Why do you think the writer visited Miss Beam’s school?",
                    "Q2:  What was the ‘game’ that every child in the school had to play?",
                    "Q3:  “Each term every child has one blind day, one lame day…” Complete the line. Which day was the hardest? Why was it the hardest? ",
                    "Q4:  What was the purpose of these special days?",
                    
                 
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
