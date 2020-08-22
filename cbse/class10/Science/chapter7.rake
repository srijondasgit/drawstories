
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Control and Coordination", audio_link: 'chapter1.mp3')
        sections = ['In the previous chapter, we looked at life processes involved in the maintenance functions in living organisms. There, we had started with a notion we all have, that if we see something moving, it is alive. Some of these movements are in fact the result of growth, as in plants. A seed germinates and grows, and we can see that the seedling moves over the course of a few days, it pushes soil aside and comes out. But if its growth were to be stopped, these movements would not happen. Some movements, as in many animals and some plants, are not connected with growth. A cat running, children playing on swings, buffaloes chewing cud – these are not movements caused by growth.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What is the difference between a reflex action and walking?',
                    'Q2:  What happens at the synapse between two neurons?',
                    'Q3:  Which part of the brain maintains posture and equilibrium of the body?',
                    'Q4:  How do we detect the smell of an agarbatti (incense stick)?',
                    'Q5:  What is the role of the brain in reflex action?',
                    'Q6:  What are plant hormones?',
                    'Q7:  How is the movement of leaves of the sensitive plant different from the movement of a shoot towards light?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
