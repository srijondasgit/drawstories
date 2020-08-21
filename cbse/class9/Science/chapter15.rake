
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "IMPROVEMENT IN FOOD RESOURCES", audio_link: 'chapter1.mp3')
        sections = ['We know that all living organisms need food.Food supplies proteins, carbohydrates, fats,vitamins and minerals, all of which we require for body development, growth and health.Both plants and animals are major sources of food for us. We obtain most of this food from agriculture and animal husbandry.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Explain any one method of crop production which ensures high yield.',
                    'Q2:  Why are manure and fertilizers used in fields?',
                    'Q3:  What are the advantages of inter-cropping and crop rotation?',
                    'Q4:  What is genetic manipulation? How is it useful in agricultural practices?',
                    'Q5:  How do storage grain losses occur?',
                    'Q6:  How do good animal husbandry practices benefit farmers?',
                    'Q7:  What are the benefits of cattle farming?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
