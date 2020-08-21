 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Life in the Temperate Grasslands", audio_link: 'chapter1.mp3')

        sections = ['Just as a forest can be defined as the place where trees are the main type of vegetation, grassland can be defined as a region where grasses form the dominant type of plant life. Grasslands make up almost a quarter of the total land surface. The types of plants that grow here greatly depend on what the climate and soil are like. As climate plays an important role in the formation of grasslands, it is generally used as a basis to divide the world’s grasslands into two broad categories: those that occur in the temperate region and those that occur in the tropical regions.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What are the two types of deserts found in the world?",
                    "Q2: In which continent is the Sahara desert located?",
                    "Q3: What are the climatic conditions of the Ladakh desert?",
                    "Q4: What mainly attracts tourists to Ladakh?",
                    "Q5: What type of clothes the people of the Sahara desert wear?",
                    "Q6: Name the trees that grow in Ladakh. ",
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
