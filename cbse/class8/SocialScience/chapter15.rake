
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Microorganisms: Friend and Foe", audio_link: 'chapter1.mp3')
        sections = ['You have seen several kinds of plants and animals. However, there are other living organisms around us which we cannot see with eyes alone. These are called microorganisms or microbes. For example, you might have observed that during rainy season moist bread gets spoilt and its surface gets covered with greyish white patches. Observe these patches through a magnifying glass. You will see tiny, black rounded structures. Do you know what these structures are and where did these come from?',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What are the major groups of microorganisms?',
                    'Q2:  Name the microorganisms which can fix atmospheric nitrogen in the soil.',
                    'Q3:  Write 10 lines on the usefulness of microorganisms in our lives.',
                    'Q4:  Write a short paragraph on the harms caused by microorganisms.',
                    'Q5:  What are antibiotics? What precautions must be taken while taking antibiotics?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
