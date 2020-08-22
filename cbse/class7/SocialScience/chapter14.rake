 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Growing up as Boys and Girls", audio_link: 'chapter1.mp3')

        sections = ['Being a boy or a girl is an important part of one’s identity. The society we grow up in teaches us what kind of behaviour is acceptable for girls and boys, what boys and girls can or cannot do.We often grow up thinking that these things are exactly the same everywhere. But do all societies look at boys and girls in the same way? We will try and answer this question in this chapter', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Make a list of toys and games that boys typically play and another for girls. If there is a difference between the two lists, can you think of some reasons why this is so? Does this have any relationship to the roles children have to play as adults?",
                    "Q2: If you have someone working as a domestic help in your house or locality talk to her and find out a little bit more about her life – Who are her family members? Where is her home? How many hours does she work? How much does she get paid? Write a small story based on these details.",
                   
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
