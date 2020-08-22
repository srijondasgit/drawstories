
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Metals and Non-metals", audio_link: 'chapter1.mp3')
        sections = ['In Class IX you have learnt about various elements. You have seen that elements can be classified as metals or non-metals on the basis of their properties.(a) Think of some uses of metals and non-metals in your daily life.(b) What properties did you think of while categorising elements as metals or non-metals?(c) How are these properties related to the uses of these elements? Let us look at some of these properties',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Explain the meanings of malleable and ductile.',
                    'Q2:  In which test tube did you find that a reaction has occurred?',
                    'Q3:  On what basis can you say that a reaction has actually taken place?',
                    'Q4:  Can you correlate your observations for the Activities 3.9, 3.10 and 3.11?',
                    'Q5:  Write a balanced chemical equation for the reaction that has taken place.',
                    'Q6:  Which gas is produced when dilute hydrochloric acid is added to a reactive metal? Write the chemical reaction when iron reacts with dilute H2SO4.',
                    'Q7:  What would you observe when zinc is added to a solution of iron(II)sulphate? Write the chemical reaction that takes place.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
