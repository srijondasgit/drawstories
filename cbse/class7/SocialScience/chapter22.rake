 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Our Changing Earth", audio_link: 'chapter1.mp3')

        sections = ['The lithosphere is broken into a number of plates known as the Lithospheric plates. You will be surprised to know that these plates move around very slowly – just a few millimetres each year. This is because of the movement of the molten magma inside the earth. The molten magma inside the earth moves in a circular manner as shown in the activity.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Why do the plates move?",
                    "Q2: What are exogenic and endogenic forces?",
                    "Q3: What is erosion?",
                    "Q4: How are flood plains formed?",
                    "Q5: What are sand dunes?",
                    "Q6: How are beaches formed?",
                    "Q7: What are ox bow lakes?",
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
