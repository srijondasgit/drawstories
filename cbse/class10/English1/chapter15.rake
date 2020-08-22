
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Vallikkannana', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Madam Rides The Bus", audio_link: 'chapter1.mp3')
        sections = ['THERE was a girl named Valliammai who was called Valli for short. She was eight years old and very curious about things. Her favourite pastime was standing in the front doorway of her house, watching what was happening in the street outside.There were no playmates of her own age on her street, and this was about all she had to do',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Why does the conductor refer to Valli as ‘madam’?',
                    'Q2:  Find the lines in the text which tell you that Valli was enjoying her ride on the bus',
                    'Q3:  Why does Valli refuse to look out of the window on her way back?',
                    'Q4:  What does Valli mean when she says, “I was just agreeing with what you said about things happening without our knowledge.”',
                    'Q5:    The author describes the things that Valli sees from an eight-year-old’s point of view. Can you find evidence from the text for this statement?',  
                   ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
