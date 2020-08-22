
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'K.A. ABBAS', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Bholi", audio_link: 'chapter1.mp3')
        sections = ['HER name was Sulekha, but since her childhood everyone had been calling her Bholi, the simpleton. She was the fourth daughter of Numberdar Ramlal. When she was ten months old, she had fallen off the cot on her head and perhaps it had damaged some part of her brain. That was why she remained a backward child and came to be known as Bholi, the simpleton.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  WBholi had many apprehensions about going to school. What made her feel that she was going to a better place than her home?',
                    'Q2:  How did Bholi’s teacher play an important role in changing the course of her life?',
                    'Q3:  Why did Bholi at first agree to an unequal match? Why did she later reject the marriage? What does this tell us about her?',
                    'Q4:  Bholi’s real name is Sulekha. We are told this right at the beginning.But only in the last but one paragraph of the story is Bholi called Sulekha again. Why do you think she is called Sulekha at that point in the story?',
                    'Q5:  Bholi’s teacher helped her overcome social barriers by encouraging and motivating her. How do you think you can contribute towards changing the social attitudes illustrated in this story?',
                     ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
