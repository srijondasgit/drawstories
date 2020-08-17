
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Rudyard Kipling', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "How the Dog Found Himself a Master!",
         audio_link: 'chapter1.mp3')
        sections = ['DOGS were once their own masters and lived the way wolves do, in freedom, until a dog was born who was ill pleased with this way of life. He was sick and tired of wandering about by himself', 

                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  Why did the dog feel the need for a master? ",
                    "Q2:  Who did he first choose as his master? Why did he leave that master? ",
                    "Q3:  Who did he choose next? ",
                    "Q4:  Why did he serve the Lion for a long time?",
                    "Q5:  Who did he finally choose as his master and why?",
                    
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
