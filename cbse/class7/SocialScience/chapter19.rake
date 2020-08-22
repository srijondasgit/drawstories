 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Struggles for Equality", audio_link: 'chapter1.mp3')

        sections = ['In this book, you have read about people like Kanta, the Ansaris, Melani and Swapna. The thread that connects all of these lives is that they have been treated unequally. What do people do when they face such inequalities? History is full of examples of persons who have come together to fight against inequality and for issues of justice. Do you recall the story of Rosa Parks in Chapter 1? Do you remember the photo-essay on the women’s movement in Chapter 5? In this chapter you will learn about some of the ways in which people have struggled against inequality', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What do you think is meant by the expression ‘power over the ballot box’? Discuss.",
                    "Q2: What issue is the Tawa Matsya Sangh (TMS) fighting for?",
                    "Q3: What role does the Constitution play in people’s struggles for equality?",
                                                             
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
