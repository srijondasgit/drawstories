
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'GUY DE MAUPASSANT', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Necklace", audio_link: 'chapter1.mp3')
        sections = ['SHE was one of those pretty, young ladies, born as if through an error of destiny, into a family of clerks. She had no dowry, no hopes, no means of becoming known, loved, and married by a man either rich or distinguished; and she allowed herself to marry a petty clerk in the office of the Board of Education. She was simple, but she was unhappy.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  The course of the Loisels’ life changed due to the necklace. Comment.',
                    'Q2:  What was the cause of Matilda’s ruin? How could she have avoided it?',
                    'Q3:  What would have happened to Matilda if she had confessed to her friend that she had lost her necklace?',
                    'Q4:  If you were caught in a situation like this, how would you have dealt with it?',
                    'Q5:  The characters in this story speak in English. Do you think this is their language? What clues are there in the story about the language its characters must be speaking in?',
                     ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
