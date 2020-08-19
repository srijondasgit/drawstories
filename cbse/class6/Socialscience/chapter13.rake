 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "DIVERSITY AND DISCRIMINATION", audio_link: 'chapter1.mp3')

        sections = ['There are many things that make us what we are – how we live, the languages we speak, what we eat, wear, the games we play and the things we celebrate. All of these are influenced both by the geography and history of the place where we live.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  How can the stereotype that girls are a burden on their parents affect the life of a daughter? Imagine this situation and list at least five different effects that this stereotype can have on the way daughters get treated in the house. ",
                    "Q2:  What does the Constitution say with regard to equality? Why do you think it is important for all people to be equal? ",
                    
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
