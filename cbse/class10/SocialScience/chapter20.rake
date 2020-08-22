
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "LIFELINE OF NORMAL ECONOMY", audio_link: 'chapter1.mp3')
        sections = ['We use different materials and services in our daily life. Some of these are available in our immediate surroundings, while other requirements are met by bringing things from other places. Goods and services do not move from supply locales to demand locales on their own. The movement of these goods and services from their supply locations to demand locations necessitates the need for transport. Some people are engaged in facilitating these movements.These are known to be traders who make the products come to the consumers by transportation. Thus, the pace of development of a country depends upon the production of goods and services as well as their movement over space. Therefore, efficient means of transport are prerequisites for fast development.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  State any three merits of roadways.',
                    'Q2:  Where and why is rail transport the most convenient means of transportation?',
                    'Q3:  What is the significance of the border roads?',
                    'Q4:  What is meant by trade? What is the difference between international and local trade?',
                    'Q5:  Why are the means of transportation and communication called the lifelines of a nation and its economy?',
                    'Q6:  Write a note on the changing nature of the international trade in the last fifteen years.',
                         ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
