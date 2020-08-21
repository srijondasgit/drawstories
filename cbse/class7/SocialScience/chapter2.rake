 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "NEW KINGS AND KINGDOMS", audio_link: 'chapter1.mp3')

        sections = ['Many new dynasties emerged after the seventh century. Map 1 shows the major ruling dynasties in different parts of the subcontinent between the seventh and twelfth century.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Who were the parties involved in the “tripartite struggle”?",
                    "Q2: What were the qualifications necessary to become a member of a committee of the sabha in the Chola empire? China under the Tang dynasty?",
                    "Q3: What were the two major cities under the control of the Chahamanas?",
                    "Q4: How did the Rashtrakutas become powerful?",
                    "Q5: What did the new dynasties do to gain acceptance?",
                    "Q6: What kind of irrigation works were developed in the Tamil region?",
             
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
