 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'SHARADA DWIVEDI', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Experts detectives", audio_link: 'chapter1.mp3')

        sections = ['As we walked back towards the clinic Seven said, “He doesn’t look anything like a monster, Maya. But did you see how thin he is? Maybe he’s very poor and can’t afford to eat.”', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Why does Maya think Mr Nath is a crook? Who does she say the Sunday visitor is?",
                    "Q2: Does Nishad agree with Maya about Mr Nath? How does he feel about him?",
                                       
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
