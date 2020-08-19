 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "GETTING TO KNOW PLANTS", audio_link: 'chapter1.mp3')

        sections = ['Go outside and observe all the plants around you. Do you see that some plants are small,some very big, while some are just patches of green on the soil? Some have green leaves while some others have reddish ones. Some have huge red flowers, some have tiny blue ones, while some have none. We do see a variety of plants existing all around us — near our homes, in the school ground, on the way to the school, in the parks and gardens, isn’t it?', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Can you find a plant in your house or in your neighborhood, which has a long but a weak stem? Write its name. In which category would you classify it?",
                    "Q2: What is the function of a stem in a plant?",
                    "Q3: If a plant has fibrous root, what type of venation do its leaves likely to have?",
                    "Q4: If a plant has leaves with reticulate venation, what kind of roots will it have?",
                    "Q5: Is it possible for you to recognize the leaves without seeing them? How?",
                    "Q6: Write the names of the parts of a flower Name the part of the plant which produces its food. Name this process.",
                    "Q7: In which part of a flower, you are likely to find the ovary?",
                    "Q8: Name two flowers, each with joined and separated sepals.",                     
                   
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
