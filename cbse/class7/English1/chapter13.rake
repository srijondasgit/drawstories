 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'KIT WRIGHT', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Dad and the cat and the tree", audio_link: 'chapter1.mp3')

        sections = ['This morning a cat got Stuck in our tree. Dad said, “Right, just Leave it to me.”', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Why was Dad sure he wouldn’t fall?",
                    "Q2: Which phrase in the poem expresses Dad’s self-confidence best?",
                    "Q3: Describe Plan A and its consequences.",
                    "Q4: Plan C was a success. What went wrong then?",
                    "Q5: The cat was very happy to be on the ground. Pick out the phrase used to express this idea.",
                    "Q6: Describe the Cat and Dad situation in the beginning and at the end of the poem.",
                    "Q7: Do you find the poem humorous? Read aloud lines which make you laugh.",
                    
                    
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
