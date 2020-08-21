 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Electric Current and its Effects", audio_link: 'chapter1.mp3')

        sections = ['You might have tried the game ‘How steady is your hand?’ suggested in Chapter 12 of Class VI. If not, you may try it out now.Paheli and Boojho had also set up the game by connecting an electric circuit as suggested in Class VI. They had lots of fun trying it out with their families and friends. They enjoyed it so much that they decided to suggest it to a cousin of theirs who stayed in a different town. So, Paheli made a neat drawing showing how the various electric components were to be connected (Fig.14.1).', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Name any two effects of electric current.",
                    "Q2: When the current is switched on through a wire, a compass needle kept nearby gets deflected from its north-south position. Explain.",
                  
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
