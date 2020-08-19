 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "SORTING MATERIALS INTO GROUPS", audio_link: 'chapter1.mp3')

        sections = ['We saw that our food and clothes have so much variety in them. Not just food and clothes, there is such a vast variety of objects everywhere. We see around us, a chair, a bullock cart, a cycle, cooking utensils, books, clothes, toys, water, stones and many other objects. All these objects have different shapes, colours and uses (Fig. 4.1).', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Name five objects which can be made from wood.",
                    "Q2: List all items known to you that float on water. Check and see if they will float on an oil or kerosene.",
                             
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
