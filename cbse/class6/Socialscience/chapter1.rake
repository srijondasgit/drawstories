 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "WHAT, WHERE, HOW AND WHEN?", audio_link: 'chapter1.mp3')

        sections = ['Finding out what happened Yesterday: you could listen to the radio, watch television, read a newspaper.Last year: ask somebody who remembers.But what about long, long ago? Let us see how it can be done.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1: List one major difference between manuscripts and inscriptions.",
                    "Q2: Return to Rasheeda’s question. Can you think of some answers to it?",
                    "Q3: Make a list of all the objects that archaeologists may find. Which of these could be made of stone?",
                    "Q4: Why do you think ordinary men and women did not generally keep records of what they did?",
                    "Q5: Describe at least two ways in which you think the lives of kings would have been different from those of farmers.",                    "Q6: ",
                           
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
