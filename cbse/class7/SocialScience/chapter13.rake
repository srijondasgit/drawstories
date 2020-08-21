 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "How the State Government Works", audio_link: 'chapter1.mp3')

        sections = ['Last year, we discussed the fact that government works at three levels – local, state and national – and looked at the work of local government in some  . In this chapter, we examine the work of the government at the state level. How does this take place in a democracy? What is the role of a Member of the Legislative Assembly (MLA) and Ministers?', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Use the terms ‘constituency’ and ‘represent’ to explain who an MLA is and how is the person elected?",
                    "Q2: How did some MLAs become Ministers? Explain.",
                    "Q3: Why should decisions taken by the Chief Minister and other ministers be debated in the Legislative Assembly?",
                    "Q4: What was the problem in Patalpuram? What discussion/action was taken by the following?",
                    "Q5: What is the difference between the work that MLAs do in the Assembly and the work done by government departments?",
                              
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
