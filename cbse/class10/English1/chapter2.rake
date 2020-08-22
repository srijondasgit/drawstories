
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'ROBERT FROST', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Fire and Ice", audio_link: 'chapter1.mp3')
        sections = ['Some say the world will end in fire',
                    'Some say in ice.',
                    'From what I’ve tasted of desire',
                    'I hold with those who favour fire.',
                     'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  There are many ideas about how the world will ‘end’. Do you think the world will end some day? Have you ever thought what would happen if the sun got so hot that it ‘burst’, or grew colder and colder?',
                    'Q2: What is the rhyme scheme of the poem? How does it help in bringing out the contrasting ideas in the poem?',
                    
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
