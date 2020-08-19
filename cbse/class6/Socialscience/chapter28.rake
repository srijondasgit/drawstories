 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "INDIA : CLIMATE, VEGETATION AND WILDLIFE", audio_link: 'chapter1.mp3')

        sections = ['You read in newspapers daily and watch on T.V. or hear others talking about weather. You must know that weather is about day to day changes in the atmosphere. It includes changes in temperature, rainfall and sunshine etc. For example, as such it may be hot or cold; sunny or cloudy; windy or calm. You must have noticed that when it is hot continuously for several days you don’t need any warm clothing. You also like to eat or drink cold things. In contrast there are days together, you feel cold without woollen clothes when it is very windy and chilly, you would like to have something hot to eat.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Which winds bring rainfall in India? Why is it so important? ",
                    "Q2: Name the different seasons in India.",
                    "Q3: What is natural vegetation?",
                                                            
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
