
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Food Security in India", audio_link: 'chapter1.mp3')
        sections = ['Food security means availability,accessibility and affordability of food to all people at all times. The poor households are more vulnerable to food insecurity whenever there is a problem of production or distribution of food crops. Food security depends on the Public Distribution System (PDS) and government vigilance and action at times, when this security is threatened.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  How is food security ensured in India?',
                    'Q2:  Which are the people more prone to food insecurity?',
                    'Q3:  Which states are more food insecure in India?',
                    'Q4:  Do you believe that green revolution has made India self-sufficient in food grains? How?',
                    'Q5:  A section of people in India are still without food. Explain?',
                    'Q6:  What happens to the supply of food when there is a disaster or a calamity?',
                          ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
