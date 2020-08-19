 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "URBAN LIVELIHOODS", audio_link: 'chapter1.mp3')

        sections = ['This is the city where my cousin lives. I have been here only a few times. It is very big. Once, when I came here, my cousin took me around. We left the house early in the morning. As we turned the corner onto the main street we saw that it was already buzzing with activity. ', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  In what ways is a permanent and regular job different from a casual job? Discuss.",
                    "Q2:  What benefits does Sudha get along with her salary?",
                           
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
