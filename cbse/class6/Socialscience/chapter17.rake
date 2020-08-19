 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "RURAL ADMINISTRATION", audio_link: 'chapter1.mp3')

        sections = ['Mohan is a farmer. His family owns a small agricultural field, which they have been farming for many years. Next to his field is Raghus land which is separated from his by a small boundary called a bund.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  What is the work of the police? ",
                    "Q2:  List two things that the work of a Patwari includes.",
                    "Q3:  What is the work of a tehsildar? ",
                    "Q4:  What issue is the poem trying to raise? Do you think this is an important issue? Why?",
                    "Q5: In what ways are the work of the Panchayat, that you read about in the previous chapter, and the work of the Patwari related to each other? ",
                    "Q6: Visit a police station and find out the work that the police have to do to prevent crime and maintain law and order in their area especially during festivals, public meetings etc.",
                    "Q7: Who is in charge of all the police stations in a district? Find out",
                    "Q8: How do women benefit under the new law?",
                    "Q9: In your neighbourhood are there women who own property? How did they acquire it? ",
                           
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
