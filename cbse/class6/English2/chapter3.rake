
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'an Iranian folktale', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Shepherd’s Treasure",
                    audio_link: 'chapter1.mp3')
        sections = ["IN a village in Iran there once lived a shepherd. He was very poor. He did not have even a small cottage of his own. He had never been to school or learnt to read and write, for there were very few schools in those days.",
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  Who visited the shepherd one day, and why? ",
                    "Q2:  Why did the other governors grow jealous of the shepherd?",
                    "Q3:  Why was the new governor called to the palace? ",
                    "Q4:  How did the king reward the new governor?",
                    
                      ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
