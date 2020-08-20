 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Desert", audio_link: 'chapter1.mp3')

        sections = ['THOSE of us who live in regions covered with forests and surrounded by hills may find it difficult to imagine what a desert is really like. The popular belief is that it is an endless stretch of sand where no rain falls and, therefore, no vegetation grows. It is dry, hot, waterless and without shelter. But this is not entirely correct. For those who have studied it, the desert can be a beautiful place. It is the home of a variety of people, animals and plants that have learnt to live under very hot and dry conditions.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Describe a desert in your own way. Write a paragraph and read it aloud to your classmates.",
                                                   
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
