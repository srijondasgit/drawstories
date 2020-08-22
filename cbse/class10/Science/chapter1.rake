
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Chemical Reactions and Equations", audio_link: 'chapter1.mp3')
        sections = ['Consider the following situations of daily life and think what happens when –(a) milk is left at room temperature during summers.(b) an iron tawa/pan/nail is left exposed to humid atmosphere.(c) grapes get fermented.(d) food is cooked. (e) food gets digested in our body. (f) we respire.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What is a balanced chemical equation? Why should chemical equations be balanced?',
                    'Q2:  What does one mean by exothermic and endothermic reactions? Give examples.',
                    'Q3: Why is respiration considered an exothermic reaction? Explain.',
                    'Q4:  Why are decomposition reactions called the opposite of combination reactions? Write equations for these reactions.',
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
