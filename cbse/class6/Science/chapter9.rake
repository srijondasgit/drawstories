 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "THE LIVING ORGANISMS AND THEIR SURROUNDINGS", audio_link: 'chapter1.mp3')

        sections = ['Paheli and Boojho went on vacation to many places of interest. One such trip took them to the river Ganga in Rishikesh.They climbed the mountains of the Himalayas, where it was very cold. They saw many kinds of trees on these mountains — oaks, pines and deodars,very different from the ones near their home on the plains! In yet another trip, they travelled to Rajasthan and moved on camels through the hot desert. They collected different kinds of cactus plants from this trip. Finally, they went on a trip to Puri and visited the sea beach, dotted with casuarina trees. While recollecting all the fun that they had on these trips, a thought struck them. All these places were so different from one another, some were cold, some very hot and dry, and some places so humid. And yet all of them had many organisms (living creatures) of various kinds.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What is a habitat?",
                    "Q2: How are cactus adapted to survive in a desert?",
                    "Q3: Give an example of a non-living thing, which shows any two characteristics of living things.",
                    "Q4: List the common characteristics of the living things.",
                    "Q5: Explain, why speed is important for survival in the grasslands for animals that live there. (Hint: There are few trees or places for animals to hide in grasslands habitats.)",
                           
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
