
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'a story from The Panchatantra', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Monkey and the Crocodile",
                    audio_link: 'chapter1.mp3')
        sections = [   "ONCE, on the bank of a river, a monkey made a home for himself in a tree laden with fruit. He lived in it happily eating to his heart’s content the fruit of his choice. The monkey was happy but lonely and wanted a companion to talk to and share the fruits with. But there was no one around, not even another monkey, till one day a crocodile appeared on the riverside.",
                    'Please refer your text book for the rest of the course',
                    ] 
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  The monkey was happy living in the fruit tree, but his happiness was not complete. What did he miss?",
                    "Q2:  What did the two friends generally talk about?",
                    "Q3:  Why was the crocodile’s wife annoyed with her husband one day?",
                    "Q4:  Why was the crocodile unwilling to invite his friend home?",
                    "Q5:  What did the crocodile tell the monkey midstream?",
                      ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
