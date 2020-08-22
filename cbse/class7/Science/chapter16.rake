 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Water: A Precious Resource", audio_link: 'chapter1.mp3')

        sections = ['You are perhaps aware that 22 March is celebrated as the world water day! A school celebrated ‘water day’ and invited posters from the children of your age group. Some of the posters presented on that day are shown in Fig. 16.1.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Explain how groundwater is recharged?",
                    "Q2: There are ten tubewells in a lane of fifty houses. What could be the long term impact on the water table?",
                    "Q3: You have been asked to maintain a garden. How will you minimise the use of water?",
                    "Q4: Explain the factors responsible for the depletion of water table.",
                    
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
