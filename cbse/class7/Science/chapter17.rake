 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Forests: Our Lifeline", audio_link: 'chapter1.mp3')

        sections = ['One evening Boojho entered the park with an elderly person. He introduced him to his friends. Prof Ahmad was a scientist working in the university. The children started playing while Prof Ahmad sat on a bench in the corner. He was tired as he had participated in the golden jubilee celebrations of the town. After a while, the children also came and sat around him.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Explain how animals dwelling in the forest help it grow and regenerate.",
                    "Q2: Explain how forests prevent floods.",
                    "Q3: What are decomposers? Name any two of them. What do they do in the forest?",
                    "Q4: Explain the role of forest in maintaining the balance between oxygen and carbon dioxide in the atmosphere.",
                    "Q5: Explain why there is no waste in a forest.",
                    "Q6: List five products we get from forests?".
                  
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
