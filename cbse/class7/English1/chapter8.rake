 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'WILLIAM ELLIOT GRIFFIS', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Ashes that made trees bloom", audio_link: 'chapter1.mp3')

        sections = ['In the good old days of the daimios,there lived an old couple whose only pet was a little dog. Having no children, they loved it as though it were a baby. The old dame made it a cushion of blue crape, and at mealtime Muko—for that was its name—would sit on it as snug as any cat. The kind people fed the pet with tidbits of fish from their own chopsticks, and all the boiled rice it wanted.Thus treated, the dumb creature loved its protectors like a being with a soul.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: The old farmer is a kind person. What evidence of his kindness do you find in the first two paragraphs.",
                    "Q2: What did the dog do to lead the farmer to the hidden gold?",
                    "Q3: (i) How did the spirit of the dog help the farmer first?
                        (ii) How did it help him next",
                    "Q4: Why did the daimio reward the farmer but punish his neighbour for the same act?",
                                      
                    
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
