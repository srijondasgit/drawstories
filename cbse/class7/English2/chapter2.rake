 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'DHAN GOPAL MUKERJI', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Bringing Up Kari", audio_link: 'chapter1.mp3')

        sections = ['KARI, the elephant, was five months old when he was given to me to take care of. I was nine years old and I could reach his back if I stood on tiptoe. He seemed to remain that high for nearly two years. We grew together; that is probably why I never found out just how tall he was. He lived in a pavilion, under a thatched roof which rested on thick tree stumps so that it could not fall in when Kari bumped against the poles as he moved about.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: The enclosure in which Kari lived had a thatched roof that lay on thick tree stumps. Examine the illustration of Kari’s pavilion on page 8 and say why it was built that way.",
                    "Q2: Finding good twigs for Kari took a long time. Why?",
                    "Q3: Why did Kari push his friend into the stream?",
                    "Q4: Kari was like a baby. What are the main points of comparison?",
                    "Q5: Kari helped himself to all the bananas in the house without anyone noticing it. How did he do it?",
                    "Q6: Kari learnt the commands to sit and to walk. What were the instructions for each command?",
                    "Q7: What is “the master call”? Why is it the most important signal for an elephant to learn?",
                                      
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
