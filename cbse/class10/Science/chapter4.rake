
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Carbon and its Compounds", audio_link: 'chapter1.mp3')
        sections = ['In the last Chapter, we came to know many compounds of importance to us. In this Chapter we will study about some more interesting compounds and their properties. Also, we shall be learning about carbon,an element which is of immense significance to us in both its elemental form and in the combined form.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What would be the electron dot structure of carbon dioxide which has the formula CO2 ?',
                    'Q2:  What would be the electron dot structure of a molecule of sulphur which is made up of eight atoms of sulphur? (Hint – The eight atoms of sulphur are joined together in the form of a ring.)',
                    'Q3:  How many structural isomers can you draw for pentane?',
                    'Q4:  What are the two properties of carbon which lead to the huge number of carbon compounds we see around us?',
                    'Q5:  What will be the formula and electron dot structure of cyclopentane?',
                    'Q6:  Why is the conversion of ethanol to ethanoic acid an oxidation reaction?',
                    'Q7:  A mixture of oxygen and ethyne is burnt for welding. Can you tell why a mixture of ethyne and air is not used?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
