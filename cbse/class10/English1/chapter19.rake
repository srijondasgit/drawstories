
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Anton Chekov', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Proposal", audio_link: 'chapter1.mp3')
        sections = ['A drawing-room in Chubukov‘s house. Lomov enters, wearing a dress-jacket and white gloves. Chubukov rises to meet him.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What does Chubukov at first suspect that Lomov has come for? Is he sincere when he later says “And I’ve always loved you, my angel, as if you were my own son”? Find reasons for your answer from the play.',
                    'Q2:  Chubukov says of Natalya: “... as if she won’t consent! She’s in love;egad, she’s like a lovesick cat…” Would you agree? Find reasons for your answer.',
                    'Q3:  Find all the words and expressions in the play that the characters use to speak about each other, and the accusations and insults they hurl at each other. (For example, Lomov in the end calls Chubukov an intriguer; but earlier, Chubukov has himself called Lomov a “malicious, doublefaced intriguer.” Again, Lomov begins by describing Natalya as “an excellent housekeeper, not bad-looking,well-educated.”)',
                    'Q4:  Then think of five adjectives or adjectival expressions of your own to describe each character in the play.',
                    'Q5:  Can you now imagine what these characters will quarrel about next?',  
                   ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
