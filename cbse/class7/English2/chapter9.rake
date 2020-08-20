 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "A Tiger in the House", audio_link: 'chapter1.mp3')

        sections = ['TIMOTHY, the tiger-cub, was discovered by Grandfather in the Terai jungle near Dehra.One day, when Grandfather was strolling down the forest path at some distance from the rest of the party, he discovered a little tiger about eighteen inches long, hiding among the intricate roots of a banyan tree. Grandfather picked him up, and brought him home. He had the distinction of being the only member of the party to have bagged any game, dead or alive.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Where was the tiger cub hiding when Grandfather found him?",
                    "Q2: (i) What did Toto do to entertain Timothy?
                        (ii) What did he do when Timothy lost his temper?",
                    "Q3: “I became one of the tiger’s favourites”. Who is ‘I’ in the statement? Why did he think so?",
                    "Q4: Where was Timothy most comfortable during the day? Where was he during the night?",
                    "Q5: What was Grandmother’s prophecy about the cook? Did it come true?",
                    "Q6: What made Grandfather decide to transfer Timothy to the zoo?",
                    "Q7: Why did Grandfather want Timothy to be put in another enclosure?",
                    "Q8: What shocked Grandfather in the end?",
                           
                    
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
