
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'O. HENRY', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Last Leaf", audio_link: 'chapter1.mp3')
        sections = ['SUE and Johnsy, two young artists, shared a small flat. The flat was on the third storey of an old house.Johnsy fell very seriously ill in November. She had pneumonia.She would lie in her bed without moving, just gazing out of the window. Sue, her friend, became very worried. She sent for the doctor. Although he came every day there was no change in Johnsy’s condition.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What is Johnsy’s illness? What can cure her, the medicine or the willingness to live?',
                    'Q2:  Do you think the feeling of depression Johnsy has is common among teenagers?',
                    'Q3:  Behrman has a dream. What is it? Does it come true?',
                    'Q4:  What is Behrman’s masterpiece? What makes Sue say so?',
                                       
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
