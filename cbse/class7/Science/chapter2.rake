 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Nutrition in Animals", audio_link: 'chapter1.mp3')

        sections = ['You have learnt in Chapter 1 that plants can prepare their own food by the process of photosynthesis but animals cannot. Animals get their food from plants, either directly by eating plants or indirectly by eating animals that eat plants. Some animals eat both plants and animals. Recall that all organisms including humans require food for growth, repair and functioning of the body. Animal nutrition includes nutrient requirement, mode of intake of food and its utilisation in the body.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What are villi? What is their location and function?",
                    "Q2: Where is the bile produced? Which component of the food does it help to digest?",
                    "Q3: Name the type of carbohydrate that can be digested by ruminants but not by humans. Give the reason also.",
                    "Q4: Why do we get instant energy from glucose?",
                   
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
