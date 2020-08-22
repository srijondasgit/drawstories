
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "GLOBALISATION AND THE INDIAN ECONOMY", audio_link: 'chapter1.mp3')
        sections = ['Most regions of the world are getting increasingly interconnected. While this interconnectedness across countries has many dimensions — cultural, political, social and economic — this chapter looks at globalisation in a more limited sense. It defines globalisation as the integration between countries through foreign trade and foreign investments by multinational corporations (MNCs). As you will notice, the more complex issues of portfolio investment have been left out.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What do you understand by globalisation? Explain in your own words.',
                    'Q2:  What was the reasons for putting barriers to foreign trade and foreign investment by the Indian government? Why did it wish to remove these barriers?',
                    'Q3:  How would flexibility in labour laws help companies?',
                    'Q4:  What are the various ways in which MNCs set up, or control, production in other countries?',
                    'Q5:  Why do developed countries want developing countries to liberalise their trade and investment? What do you think should the developing countries demand in return?',
                    'Q6:  “The impact of globalisation has not been uniform.” Explain this statement.',
                    'Q7:  How has liberalisation of trade and investment policies helped the globalisation process?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
