 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "MAPS", audio_link: 'chapter1.mp3')

        sections = ['You have learnt in the previous chapter about the advantages of a globe. However, globe has limitations as well. A globe can be useful when we want to study the earth as a whole. But, when we want to study only a part of the earth, as about our country, states, districts, towns and villages, it is of little help. In such a situation we use maps. A map is a representation or a drawing of the earth’s surface or a part of it drawn on a flat surface according to a scale. But it is impossible to flatten a round shape completely', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What are the three components of a map?",
                    "Q2: What are the four cardinal directions?",
                    "Q3: What do you mean by the term ‘the scale of the map’?",
                    "Q4: How are maps more helpful than a globe?",
                    "Q5: Distinguish between a map and a plan.",
                    "Q6: hich map provides detailed information?",
                    "Q7: How do symbols help in reading maps?",
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
