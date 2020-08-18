
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: ' ZAI WHITAKER ', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "What Happened to the Reptiles",
                    audio_link: 'chapter1.mp3')
        sections = [   "YOU may not believe this story. But I can tell you it is true,because I have been to Pambupatti, a village on the edge of the jungle. It is on a cliff, and the vast forest stretches below like a mossy green carpet. There are many kinds of people in the village — dark, fair, tall, short. They speak many languages. Some eat meat, some don’t. Some pray in a small temple at the edge of the forest. Others pray in a mosque some miles away.",
                    'Please refer your text book for the rest of the course',
                    ] 
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  In what way is Pambupatti different from any other village? ",
                    "Q2:  Why is Prem determined not to return to his village?",
                    "Q3:  Why did Makara dislike tortoises, snakes and lizards? Write a line about each.",
                    "Q4:  What went wrong when the tortoises, snakes and lizards left the forest?",
                    "Q5:  Why do you think Prem wants to tell the story of the reptiles to the people of his village?",
                      ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
