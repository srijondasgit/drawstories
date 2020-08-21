
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The French Revolution", audio_link: 'chapter1.mp3')
        sections = ['As we look at our surroundings, we see a large variety of things with different shapes, sizes and textures. Everything in this universe is made up of material which scientists have named “matter”. The air we breathe, the food we eat, stones, clouds, stars, plants and animals, even a small drop of water or a particle of sand – every thing is matter. We can also see as we look around that all the things mentioned above occupy space and have mass. In other words, they have both mass and volume.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Describe the circumstances leading to the outbreak of revolutionary protest in France.',
                    'Q2:  Which groups of French society benefited from the revolution? Which groups were forced to relinquish power? Which sections of society would have been disappointed with the outcome of the revolution?',
                    'Q3:  Describe the legacy of the French Revolution for the peoples of the world during the nineteenth and twentieth centuries.',
                    'Q4:  Draw up a list of democratic rights we enjoy today whose origins could be traced to the French Revolution.',
                    'Q5:  Would you agree with the view that the message of universal rights was beset with contradictions? Explain.',
                    'Q6: How would you explain the rise of Napoleon?',
                          ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
