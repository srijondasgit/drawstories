
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'A.P.J. ABDUL KALAM [an extract from Wings of Fire]', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "My Childhood", audio_link: 'chapter1.mp3')
        sections = ['I WAS born into a middle-class Tamil family in the island town of Rameswaram in the erstwhile Madras State. My father, Jainulabdeen, had neither much formal education nor much wealth; despite these disadvantages, he possessed great innate wisdom and a true generosity of spirit. He had an ideal helpmate in my mother, Ashiamma. I do not recall the exact number of people she fed every day, but I am quite certain that far more outsiders ate with us than all the members of our own family put together.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Where was Abdul Kalam’s house?',
                    'Q2:  What do you think Dinamani is the name of? Give a reason for your answer.',
                    'Q3:  Who were Abdul Kalam’s school friends? What did they later become?',
                    'Q4:  How did Abdul Kalam earn his first wages?',
                    'Q5:  Had he earned any money before that? In what way?',
                    
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
