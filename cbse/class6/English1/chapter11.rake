
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: ' Unnamed ', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Who I Am. Part I - MANY VOICES", audio_link: 'chapter1.mp3')
        sections = ['RADHA  My favourite activity is climbing trees. Just outside our house, there is a guava tree which I love to go up. Its branches spread out, so it is simple to climb up the tree, and I can sit comfortably in the fork of two branches.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:   Peter’s favourite day of the week is Sunday because......",
                    "Q2:  Nasir wants to learn ........",
                    "Q3:  Dolma believes that she can make a good Prime Minister because..... ",
                    
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
