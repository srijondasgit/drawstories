
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Sources of Energy", audio_link: 'chapter1.mp3')
        sections = ['In Class IX, we learnt that the total energy during a physical or chemical process is conserved. Why, then, do we hear so much about the energy crisis? If energy can neither be created nor destroyed, we should have no worries! We should be able to perform endless activities without thinking about energy resources!',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Can any source of energy be pollution-free? Why or why not?',
                    'Q2:  Hydrogen has been used as a rocket fuel. Would you consider it a cleaner fuel than CNG? Why or why not?',
                    'Q3:  Compare and contrast fossil fuels and the Sun as direct sources of energy.',
                    'Q4:  Compare and contrast bio-mass and hydro electricity as sources of energy.',
                    'Q5:  What are the limitations of extracting energy from— (a) the wind? (b) waves? (c) tides?',
                    'Q6:  On what basis would you classify energy sources as (a) renewable and non-renewable? (b) exhaustible and inexhaustible? Are the options given in (a) and (b) the same?',
                    'Q7:  What are the qualities of an ideal source of energy?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
