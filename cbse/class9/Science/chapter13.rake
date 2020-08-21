
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "WHY DO WE FALL ILL?", audio_link: 'chapter1.mp3')
        sections = ['When we do this exercise, we realise that health and disease in human communities are very complex issues, with many interconnected causes. We also realise that the ideas of what ‘health’ and ‘disease’ mean are themselves very complicated. When we ask what causes diseases and how we prevent them, we have to begin by asking what these notions mean.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  How many times did you fall ill in the last one year? What were the illnesses? (a) Think of one change you could make in your habits in order to avoid any of/most of the above illnesses.(b) Think of one change you would wish for in your surroundings in order to avoid any of/most of the above illnesses.',
                    'Q2:  A doctor/nurse/health-worker is exposed to more sick people than others in the community. Find out how she/he avoids getting sick herself/himself.',
                    'Q3:  Conduct a survey in your neighbourhood to find out what the three most common diseases are. Suggest three steps that could be taken by your local authorities to bring down the incidence of these diseases',
                    'Q4:  A baby is not able to tell her/his caretakers that she/he is sick. What would help us to find out (a) that the baby is sick? (b) what is the sickness?',
                    'Q5:  Under which of the following conditions is a person most likely to fall sick? (a) when she is recovering from malaria.(b) when she has recovered from malaria and is taking care of someone suffering from chicken-pox.(c) when she is on a four-day fast after recovering from malaria and is taking care of someone suffering from chicken-pox. Why?',
                    'Q6:  Under which of the following conditions are you most likely to fall sick?(a) when you are taking examinations.(b) when you have travelled by bus and train for two days.(c) when your friend is suffering from measles. Why?',
                     ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
