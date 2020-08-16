
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "India After Independence", audio_link: 'chapter1.mp3')
        sections = ['When India became independent in August 1947, it faced a series of very great challenges. As a result of Partition, 8 million refugees had come into the country from what was now Pakistan. These people had to be found homes and jobs. Then there was the problem of the princely states, almost 500 of them, each ruled by a maharaja or a nawab, each of whom had to be persuaded to join the new nation. The problems of the refugees and of the princely states had to be addressed immediately. In the longer term, the new nation had to adopt a political system that would best serve the hopes and expectations of its population.',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What did Dr Ambedkar mean when he said that “In politics we will have equality, and in social and economic life we will have inequality”?',
                    'Q2:  After Independence, why was there a reluctance to divide the country on linguistic lines?',
                    'Q3:  Give one reason why English continued to be used in India after Independence.',
                    'Q4:  How was the economic development of India visualised in the early decades after Independence?',
                    'Q5:  Who was Mira Behn? Find out more about her life and her ideas.',
                    'Q6:  Find out more about the language divisions in Pakistan that led to the creation of the new nation of Bangladesh. How did Bangladesh achieve independence from Pakistan?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
