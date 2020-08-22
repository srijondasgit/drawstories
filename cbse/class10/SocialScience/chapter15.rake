
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "FORST AND WILD LIFE RESOURCES", audio_link: 'chapter1.mp3')
        sections = ['We share this planet with millions of other living beings, starting from micro-organisms and bacteria, lichens to banyan trees, elephants and blue whales. This entire habitat that we live in has immense biodiversity. We humans along with all living organisms form a complex web of ecological system in which we are only a part and very much dependent on this system for our own existence. For example, the plants, animals and micro-organisms re-create the quality of the air we breathe, the water we drink and the soil that produces our food without which we cannot survive. Forests play a key role in the ecological system as these are also the primary producers on which all other living beings depend.',
                        'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What is biodiversity? Why is biodiversity important for human lives?',
                    'Q2:  How have human activities affected the depletion of flora and fauna? Explain.',
                    'Q3:  Describe how communities have conserved and protected forests and wildlife in India?',
                    'Q4:  Write a note on good practices towards conserving forest and wildlife.',
                          ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
