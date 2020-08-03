
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "HOW THE CAMEL GOT HIS HUMP", audio_link: 'chapter1.mp3')
        sections = ['How do you come to know that a \'period\' is over in your school? You come to know easily that someone is at your door when he knocks or you hear the sound of the doorbell. Most of the time you can make out that someone is approaching you by just hearing the foot steps.',
                    'You might have played a game called hide and seek. In this game a person is blind-folded and has to catch the remaining players. How is the blind- folded person able to guess which player is closest to her?',
                    'Sound plays an important role in our life. It helps us to communicate with one another. We hear a variety of sounds in our surroundings.',
                    'Make a list of sounds you hear in your surroundings.',
                    'In the music room of your school you hear the sounds made by musical instruments like flute, tabla, harmonium etc. (Fig 13.1).',
                    'How is sound produced? How does it travel from one place to another? How do we hear sound? Why are some sounds louder than others? We shall discuss such questions in this chapter.',
                    
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  ',
                    'Q2:  ',
                    'Q3:  ',
                    'Q4:  ',
                    'Q5:  ',
                    'Q6:  ',
                    'Q7:  ',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
