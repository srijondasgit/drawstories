 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Ant and the Anthem", audio_link: 'chapter1.mp3')

        sections = ['SOAPY moved restlessly on his seat in Madison Square. There are certain signs to show that winter is coming. Birds begin to fly south. People want new warm coats. And Soapy moves restlessly on his seat in the park. When you see these signs,you know that winter is near', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What are some of the signs of approaching winter referred to in the text?",
                    "Q2: What was Soapy’s first plan? Why did it not work?",
                    "Q3: “There was a sudden and wonderful change in his soul”. What brought about the change in Soapy?",
                    "Q4: “But the cop’s mind would not consider Soapy”. What did the cop not consider, and why?",
                    "Q5: “We have orders to let them shout”. What is the policeman referring to?",
                    
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
