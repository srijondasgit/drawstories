 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "MAJOR LANDFORMS OF THE EARTH", audio_link: 'chapter1.mp3')

        sections = ['You must have seen some of the landform features as shown in the Figure 6.1 below. You will notice that the surface of the earth is not the same everywhere. The earth has an infinite variety of landforms. Some parts of the lithosphere may be rugged and some flat. These landforms are a result of two processes. You will be amazed to know that the ground you are standing on is slowly moving.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What are the major landforms?",
                    "Q2: What is the difference between a mountain and a plateau?",
                    "Q3: What are the different types of mountains?",
                    "Q4: How are mountains useful to man?",
                    "Q5: How are plains formed?",
                    "Q6: Why are the river plains thickly populated?",
                    "Q7: Why are mountains thinly populated?",
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
