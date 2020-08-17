
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Rudyard Kipling', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Quarrel", audio_link: 'chapter1.mp3')
        sections = ['I quarrelled with my brother ',
                    'I don’t know what about, ', 
                    'One thing led to another ',
                    'And somehow we fell out. ',

                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1: Describe a recent quarrel that you have had with your brother, sister or friend. How did it start? What did you quarrel about? How did it end?",
                    "Q2: With your partner try to guess the meaning of the underlined phrases. (i) And somehow we fell out. (ii) The afternoon turned black.",
                   
                ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
