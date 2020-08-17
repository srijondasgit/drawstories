
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: " Resources", audio_link: 'chapter1.mp3')
        sections = ['Mona and Raju were helping Amma to clean their house. “Look at all these things.... clothes, utensils, foodgrains, combs, this bottle of honey, books.....Each of these has a use,” said Mona. “That is why they are important,” said Amma. “These are resources.....”. “What is a resource?” was Raju’s question to Amma. “Anything that can be used to satisfy a need is a resource”, replied amma. “Look around you and observe, you will be able to identify many types of resources. The water you drink when you are thirsty, the electricity you use in your house, the rickshaw you use to get home from school, the textbook you use to study are all resources. Your father has prepared a tasty snack for you. The fresh vegetables he has used are also a resource”.',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Why are resources distributed unequally over the earth?',
                    'Q2:  What is resource conservation?',
                    'Q3:  Why are human resources important?',
                    'Q4:  What is sustainable development?',
                    'Q5:  Differentiate between the followings - Potential and actual resources',
                    'Q6:  Differentiate between the followings - Ubiquitous and localised resources',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
