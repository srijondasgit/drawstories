 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Tiny Teacher", audio_link: 'chapter1.mp3')

        sections = ['NAME the smallest insect you have seen, and the wisest. Is it the fly? No, it isn’t. Is it the mosquito? No, not the mosquito. Then it must be the worm. No, none of these. It is the ant—the commonest, the smallest but the wisest insect. The story of an ant’s life sounds almost untrue. But people have kept ants as pets, and have watched their daily behaviour closely. So we know a number of facts about this tiny, hard-working and intelligent creature.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What problems are you likely to face if you keep ants as pets?",
                    "Q2: When a group of bees finds nectar, it informs other bees of its location, quantity, etc. through dancing. Can you guess what ants communicate to their fellow ants by touching one another’s feelers?",
                  
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
