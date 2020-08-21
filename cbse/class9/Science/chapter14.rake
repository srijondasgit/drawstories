
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "NATURAL RESOURCES", audio_link: 'chapter1.mp3')
        sections = ['Our planet, Earth is the only one on which life, as we know it, exists. Life on Earth is dependent on many factors. Most life-forms we know need an ambient temperature, water, and food. The resources available on the Earth and the energy from the Sun are necessary to meet the basic requirements of all life-forms on the Earth.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Why is the atmosphere essential for life?',
                    'Q2:  Why is water essential for life?',
                    'Q3:  How are living organisms dependent on the soil? Are organisms that live in water totally independent of soil as a resource?',
                    'Q4:  You have seen weather reports on television and in newspapers. How do you think we are able to predict the weather?',
                    'Q5:  We know that many human activities lead to increasing levels of pollution of the air, water-bodies and soil. Do you think that isolating these activities to specific and limited areas would help in reducing pollution?',
                    'Q6:  Write a note on how forests influence the quality of our air,soil and water resources.',
                    
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
