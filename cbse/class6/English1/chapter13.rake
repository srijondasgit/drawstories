
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'PREMCHAND', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Fair Play", audio_link: 'chapter1.mp3')
        sections = ['JUMMAN Shaikh and Algu Chowdhry were good friends. So strong was their bond of friendship that when either of them went away from the village, the other looked after his family. Both were greatly respected in the village.', 
                    
                     'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  “Then the situation changed.” What is being referred to?",
                    "Q2:  When Jumman’s aunt realised that she was not welcome in his house, what arrangement did she suggest?",
                    "Q3:  What was the villagers’ reaction when the aunt explained her case to them? ",
                    "Q4:  Why was Jumman happy over Algu’s nomination as head Panch?",
                    "Q5:  “God lives in the heart of the Panch.” the aunt said. What did she mean?",
                    "Q6:  What was Algu’s verdict as head Panch? How did Jumman take it?",
                    "Q7:  Why was Algu upset over Jumman’s nomination as head Panch?",
                 
                       ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
