 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Nutrition in Plants", audio_link: 'chapter1.mp3')

        sections = ['In Class VI you learnt that food is essential for all living organisms. You also learnt that carbohydrates, proteins, fats, vitamins and minerals are components of food. These components of food are called nutrients and are necessary for our body. All living organisms require food. Plants can synthesise food for themselves but animals including humans cannot. They get it from plants or animals that eat plants. Thus, humans and animals are directly or indirectly dependent on plants.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Why do organisms take food?",
                    "Q2: Distinguish between a parasite and a saprotroph.",
                    "Q3: How would you test the presence of starch in leaves?",
                    "Q4: Give a brief description of the process of synthesis of food in green plants.",
                    "Q5: Show with the help of a sketch that plants are the ultimate source of food.",
                              
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
