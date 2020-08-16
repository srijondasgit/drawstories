
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Rudyard Kipling', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Taro’s Reward", audio_link: 'chapter1.mp3')
        sections = ['A YOUNG woodcutter named Taro lived with his mother and father on a lonely hillside. All day long he chopped wood in the forest. Though he worked very hard, he earned very little money. This made him sad, for he was a thoughtful son and wanted to give his old parents everything they needed.', 
                   
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  Why did Taro run in the direction of the stream?",
                    "Q2:  How did Taro’s father show his happiness after drinking saké?",
                    "Q3:  Why did the waterfall give Taro saké and others water? ",
                    "Q4:  Why did the villagers want to drown Taro?",
                    "Q5:  Why did the Emperor reward Taro?",
                       
                           ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
