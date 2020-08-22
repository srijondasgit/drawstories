
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'RUSKIN BOND', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Thief’s Story", audio_link: 'chapter1.mp3')
        sections = ['WAS still a thief when I met Anil. And though only 15, I was an experienced and fairly successful hand.Anil was watching a wrestling match when I approached him. He was about 25 — a tall, lean fellow — and he looked easy-going, kind and simple enough for my purpose. I hadn’t had much luck of late and thought I might be able to get into the young man’s confidence.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Why does not Anil hand the thief over to the police? Do you think most people would have done so? In what ways is Anil different from such employers?',
                    'Q2:  Do you think people like Anil and Hari Singh are found only in fiction, or are there such people in real life?',
                    'Q3:  Do you think it a significant detail in the story that Anil is a struggling writer? Does this explain his behaviour in any way?',
                    'Q4:  Have you met anyone like Hari Singh? Can you think and imagine the circumstances that can turn a fifteen-year-old boy into a thief?',
                    'Q5:  Where is the story set? (You can get clues from the names of the persons and places mentioned in it.) Which language or languages are spoken in these places? Do you think the characters in the story spoke to each other in English?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
