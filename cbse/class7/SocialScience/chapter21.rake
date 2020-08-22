 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Inside Our Earth", audio_link: 'chapter1.mp3')

        sections = ['The earth, our homeland is a dynamic planet. It is constantly undergoing changes inside and outside. Have you ever wondered what lies in the interior of the earth? What is the earth made up of?', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What are the three layers of the earth?",
                    "Q2: What is a rock?",
                    "Q3: Name three types of rocks.",
                    "Q4: How are extrusive and intrusive rocks formed?",
                    "Q5: What do you mean by a rock cycle?",
                    "Q6: What are the uses of rocks?",
                    "Q7: What are metamorphic rocks?",
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
