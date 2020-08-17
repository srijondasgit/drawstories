
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Agriculture", audio_link: 'chapter1.mp3')
        sections = ['Gurpreet, Madho and Tina were walking through the village where they saw a farmer tilling land. The farmer told them that he was growing wheat and had just added manure to the soil to make it more fertile. He told the children that the wheat would fetch a good price in the mandi from where it would be taken to factories to make bread and biscuits from flour. This transformation from a plant to a finished product involves three types of economic activities. These are primary, secondary and tertiary activities.',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  ',
                    'Q2:  ',
                    'Q3:  ',
                    'Q4:  ',
                    'Q5:  ',
                    'Q6:  ',
                    'Q7:  ',
                    'Q8:  ',
                    'Q9:  ',
                    'Q10:  ',
                    'Q11:  ',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
