
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Making of the National Movement: 1870s--1947", audio_link: 'chapter1.mp3')
        sections = ['The above-mentioned developments led the people to ask a crucial question: what is this country of India and for whom is it meant? The answer that gradually emerged was: India was the people of India – all the people irrespective of class, colour, caste, creed, language, or gender. And the country, its resources and systems, were meant for all of them. With this answer came the awareness that the British were exercising control over the resources of India and the lives of its people, and until this control was ended India could not be for Indians.',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Why were people dissatisfied with British rule in the 1870s and 1880s?',
                    'Q2:  Who did the Indian National Congress wish to speak for?',
                    'Q3:  What economic impact did the First World War have on India?',
                    'Q4:  What did the Muslim League resolution of 1940 ask for?',
                    'Q5:  Who were the Moderates? How did they propose to struggle against British rule?',
                    'Q6:  How was the politics of the Radicals within the Congress different from that of the Moderates?',
                    'Q7:  Discuss the various forms that the Non-Cooperation Movement took in different parts of India. How did the people understand Gandhiji?',
                    'Q8:  Why did Gandhiji choose to break the salt law?',
                    'Q9:  Discussthosedevelopmentsofthe1937-47period that led to the creation of Pakistan.',
                    'Q10:  Find out how the national movement was organised in your city, district, area or state. Who participated in it and who led it? What did the movement in your area achieve?',
                    'Q11:  Find out more about the life and work of any two participants or leaders of the national movement and write a short essay about them. You may choose a person not mentioned in this chapter.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
