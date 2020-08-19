 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "RURAL LIVELIHOODS", audio_link: 'chapter1.mp3')

        sections = ['Kalpattu is a village that is close to the sea coast in Tamil Nadu.People here do many kinds of work.As in other villages, here too there is non-farm work such as making baskets, utensils, pots, bricks,bullock-carts etc.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  You have probably noticed that people in Kalpattu are engaged in a variety of non-farm work. List five of these",
                    "Q2:  List the different types of people you read about in Kalpattu who depend on farming. Who is the poorest among them and why?",
                    "Q3:  Imagine you are a member of a fishing family and you are discussing whether to take a loan from the bank for an engine. What would you say? ",
                    "Q4:  What do you think the government can do to help farmers like Sekar when they get into debt? Discuss.",
                           
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
