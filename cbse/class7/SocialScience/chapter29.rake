 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Life in the Deserts", audio_link: 'chapter1.mp3')

        sections = ['In Chapter 5, you have seen that water means life to plants, animals and people. It is difficult for anyone to live in places where there is no water to drink, where there is no grass for their cattle to feed on and where there is no water to help the crops to grow. We will now learn about the places in the world where people have learned to cope with extreme harsh temperatures; in some places as hot as fire and some as cold as ice. These are the desert areas of the world. These are characterised by low rainfall, scanty vegetation and extreme temperatures. Depending on the temperatures there can be hot deserts or cold deserts. The people inhabit these lands wherever little water is available to practise agriculture.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What are the Temperate Grasslands of North America called?",
                    "Q2: What are the cattle farms in the North American Grasslands known as?",
                    "Q3: Name the rivers that drain the Velds.",
                    "Q4: When is the rainy season in the Velds?",
                    "Q5: What is the major occupation of the people of the South African grasslands?",
                              
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
