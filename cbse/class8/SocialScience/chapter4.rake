
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Tribals, Dikus and the Vision of a Golden Age", audio_link: 'chapter1.mp3')
        sections = ['In 1895, a man named Birsa was seen roaming the forests and villages of Chottanagpur in Bihar. People said he had miraculous powers – he could cure all diseases and multiply grain. Birsa himself declared that God had appointed him to save his people from trouble, free them from the slavery of dikus (outsiders). Soon thousands began following Birsa, believing that he was bhagwan (God) and had come to solve all their problems.',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What problems did shifting cultivators face under British rule?',
                    'Q2:  How did the powers of tribal chiefs change under colonial rule?',
                    'Q3:  What accounts for the anger of the tribals against the dikus?',
                    'Q4:  What was Birsa’s vision of a golden age? Why do you think such a vision appealed to the people of the region?',
                    'Q5:  Find out from your parents, friends or teachers, the names of some heroes of other tribal revolts in the twentieth century. Write their story in your own words.',
                    'Q6:  Choose any tribal group living in India today. Find out about their customs and way of life, and how their lives have changed in the last 50 years.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
