 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Markets Around Us", audio_link: 'chapter1.mp3')

        sections = ['We go to the market to buy many things – vegetables, soap, toothpaste, masala, bread, rice, dal, clothes, notebooks, biscuits, etc. If we make a list of the goods that we purchase, it would be really long. There are many kinds of markets that we may visit for our everyday needs: these can include shops, hawker’s stalls in our neighbourhood, a weekly market, a large shopping complex, perhaps even a mall. In this chapter, we look at some of these markets and try to understand how the goods that are sold there reach buyers, who these buyers are, who these sellers are, and the sorts of problems they face.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: In what ways is a hawker different from a shop owner?",
                    "Q2: Explain how a chain of markets is formed. What purpose does it serve?",
                    "Q3: ‘All persons have equal rights to visit any shop in a marketplace.’ Do you think this is true of shops with expensive products? Explain with examples.",
                    "Q4: ‘Buying and selling can take place without going to a marketplace.’ Explain this statement with the help of examples.",
                                                            
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
