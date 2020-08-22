 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Air", audio_link: 'chapter1.mp3')

        sections = ['Our earth is surrounded by a huge blanket of air called atmosphere. All living beings on this earth depend on the atmosphere for their survival. It provides us the air we breathe and protects us from the harmful effects of the sun’s rays. Without this blanket of protection, we would be baked alive by the heat of the sun during day and get frozen during night. So it is this mass of air that has made the temperature on the earth liveable.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What is atmosphere?",
                    "Q2: Which two gases make the bulk of the atmosphere?",
                    "Q3: Which gas creates green house effect in the atmosphere?",
                    "Q4: What is weather?",
                    "Q5: Name three types of rainfall?",
                    "Q6: What is air pressure?",
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
