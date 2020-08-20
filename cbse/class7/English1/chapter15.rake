 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'LOIS BRANDT PHILLIPS', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Meadow Surprises", audio_link: 'chapter1.mp3')

        sections = ['Meadows have surprises,You can find them if you look; Walk softly through the velvet grass,And listen by the brook.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Which line in the poem suggests that you need a keen eye and  a sharp ear to enjoy a meadow? ",
                                                             
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
