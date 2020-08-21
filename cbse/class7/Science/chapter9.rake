 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Soil", audio_link: 'chapter1.mp3')

        sections = ['Soil is one of the most important natural resources. It provides anchorage to the plants and supplies water and nutrients. It is the home for many organisms. Soil is essential for agriculture. Agriculture provides food, clothing and shelter for all. Soil is thus an inseparable part of our life. The earthy fragrance of soil after the first rain is always refreshing.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Explain how soil is formed.",
                    "Q2: How is clayey soil useful for crops?",
                    "Q3: List the differences between clayey soil and sandy soil.",
                    "Q4: Sketch the cross section of soil and label the various layers.",
                    "Q5: Razia conducted an experiment in the field related to the rate of percolation. She observed that it took 40 min for 200 mL of water to percolate through the soil sample. Calculate the rate of percolation.",
                    "Q6: Explain how soil pollution and soil erosion could be prevented.",
                              
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
