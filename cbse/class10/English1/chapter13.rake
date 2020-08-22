
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: '(I) A Baker from Goa :Lucio Rodrigues (II) Coorg : Lokesh Abrol (III) Tea from Assam : Arup Kumar Dutta', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Glimpses of India", audio_link: 'chapter1.mp3')
        sections = ['OUR elders are often heard reminiscing nostalgically about those good old Portuguese days, the Portuguese and their famous loaves of bread. Those eaters of loaves might have vanished but the makers are still there. We still have amongst us the mixers, the moulders and those who bake the loaves. Those age-old, timetested furnaces still exist. The fire in the furnaces has not yet been extinguished. The thud and jingle of',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What did the bakers wear: (i) in the Portuguese days? (ii) when the author was young?',
                    'Q2:  Who invites the comment — “he is dressed like a pader”? Why?',
                    'Q3:  Where were the monthly accounts of the baker recorded?',
                    'Q4:  What does a ‘jackfruit-like appearance’ mean?',
                     ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
