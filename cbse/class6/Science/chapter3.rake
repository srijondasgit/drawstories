 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "FIBRE TO FABRIC", audio_link: 'chapter1.mp3')

        sections = ['Paheli and Boojho won the first prize in a Science Quiz competition held at their school. They were very excited and decided to use the prize money to buy clothes for their parents. When they saw a large variety of cloth material, they got confused (Fig. 3.1). The shopkeeper explained that some clothes or fabrics were cotton and some were synthetic. He also had woollen mufflers and shawls. There were many silk sarees as well. Paheli and Boojho felt very excited. They touched and felt these different fabrics. Finally, they bought a woollen muffler and a cotton saree.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: From which parts of the plant cotton and jute are obtained?  ",
                    "Q2: Name two items that are made from coconut fibre.",
                    "Q3: Explain the process of making yarn from fibre.",
                               
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
