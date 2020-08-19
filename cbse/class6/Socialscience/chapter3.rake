 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "FROM GATHERING TO GROWING FOOD", audio_link: 'chapter1.mp3')

        sections = ['Varieties of foods Today, most of our food such as fruit, vegetables,grain, milk and meat comes from plants that are grown and animals that are reared. Different plants grow in different conditions — rice, for example,requires more water than wheat and barley. This explains why farmers grow some crops in some areas and not in other areas. Different animals too, prefer different environments — for instance,sheep and goat can survive more easily than cattle in dry, hilly environments. But, as you saw in Chapter 2, women and men did not always produce their own food.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1: Why do people who grow crops have to stay in the same place for a long time?",
                    "Q2: Why do archaeologists think that many people who lived in Mehrgarh were hunters to start with and thatherding became more important later?",
                    "Q3: List three ways in which the lives of farmers and herders would have been different from that of huntergatherers.",
                    "Q4: List the cereals that you eat.",
                    "Q5: Do you grow the cereals you have listed in answer no. 7? If yes, draw a chart to show the stages in growing them. If not, draw a chart to show how these cereals reach you from the farmers who grow them.",
                           
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
