
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "DIVERSITY IN LIVING ORGANISMS", audio_link: 'chapter1.mp3')
        sections = ['Have you ever thought of the multitude of life-forms that surround us? Each organism is different from the other to a lesser or greater extent. For instance, consider yourself and a friend.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What are the advantages of classifying organisms?',
                    'Q2:  How would you choose between two characteristics to be used for developing a hierarchy in classification?',
                    'Q3:  Explain the basis for grouping organisms into five kingdoms.',
                    'Q4:  What are the major divisions in the Plantae? What is the basis for these divisions?',
                    'Q5:  How are the criteria for deciding divisions in plants different from the criteria for deciding the subgroups among animals?',
                    'Q6:  Explain how animals in Vertebrata are classified into further subgroups.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
