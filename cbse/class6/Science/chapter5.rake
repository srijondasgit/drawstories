 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "SEPARATION OF SUBSTANCES", audio_link: 'chapter1.mp3')

        sections = ['There are many instances when we notice a substance being separated from a mixture of materials. Tea leaves are separated from the liquid with a strainer, while preparing tea (Fig. 5.1).', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Why do we need to separate different components of a mixture? Give two examples.",
                    "Q2: What is winnowing? Where is it used?",
                    "Q3: How will you separate husk or dirt particles from a given sample of pulses before cooking.",
                    "Q4: What is sieving? Where is it used?",
                    "Q5: How will you separate sand and water from their mixture?",
                    "Q6: Is it possible to separate sugar mixed with wheat flour? If yes, how will you do it?",
                    "Q7: How would you obtain clear water from a sample of muddy water?",
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
