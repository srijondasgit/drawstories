 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Winds, Storms and Cyclones", audio_link: 'chapter1.mp3')

        sections = ['Orissa was hit by a cyclone with wind speed of 200 km/h on 18 October 1999. The cyclone smashed 45,000 houses making 7,00,000 people homeless. On 29 October the same year, a second cyclone with wind speed of 260 km/h hit Orissa again. It was accompanied by water waves about 9 m high. Thousands of people lost their lives. Property worth crores of rupees was destroyed. The cyclone affected agriculture, transport communication, and electricity supply.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Suggest two methods to find out wind direction at a given place.",
                    "Q2: State two experiences that made you think that air exerts pressure (other than those given in the text).",
                    "Q3: You want to buy a house. Would you like to buy a house having windows but no ventilators? Explain your answer.",
                    "Q4: Explain why holes are made in hanging banners and hoardings.",
                    "Q5: How will you help your neighbours in case cyclone approaches your village/town?",
                    "Q6: What planning is required in advance to deal with the situation created by a cyclone?",
                              
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
