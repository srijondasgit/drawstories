 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "A Shirt in
the Market", audio_link: 'chapter1.mp3')

        sections = ['This chapter tells us the story of a shirt ! It begins with the production of cotton and ends with the sale of the shirt. We shall see that a chain of markets links the producer of cotton to the buyer of the shirt in the supermarket. Buying and selling takes place at every step in the chain. Does everyone benefit equally from this? Or do some people benefit more than others? We shall find out.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What made Swapna sell the cotton to the trader instead of selling at the Kurnool cotton market?",
                    "Q2: Describe the conditions of employment as well as the wages of workers in the garment exporting factory. Do you think the workers get a fair deal?",
                    "Q3: Think of something common that we use. It could be sugar, tea, milk, pen, paper, pencil, etc. Discuss through what chain of markets this reaches you. Can you think of the people that help in the production or trade?",
                                                           
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
