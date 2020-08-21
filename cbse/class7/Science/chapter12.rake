 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Reproduction in Plants", audio_link: 'chapter1.mp3')

        sections = ['To produce its kind is a characteristic of all living organisms. You have already learnt this in Class VI. The production of new individuals from their parents is known as reproduction. But, how do plants reproduce? There are different modes of reproduction in plants which we shall learn in this chapter.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Describe the different methods of asexual reproduction. Give examples.",
                    "Q2: Explain what you understand by sexual reproduction.",
                    "Q3: State the main difference between asexual and sexual reproduction.",
                    "Q4: Sketch the reproductive parts of a flower.",
                    "Q5: Explain the difference between self-pollination and cross-pollination.",
                    "Q6: How does the process of fertilisation take place in flowers?".
                    "Q7: Describe the various ways by which seeds are dispersed.",
                  
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
