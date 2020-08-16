
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Rudyard Kipling', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Who Did Patrick's Homework?", audio_link: 'chapter1.mp3')
        sections = ['PATRICK never did homework. “Too boring,” he said. He played hockey and basketball and Nintendo instead.His teachers told him, “Patrick! Do your homework or you won’t learn a thing.” And it’s true, sometimes he did feel like an ignoramus. But what could he do? He hated homework.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  What did Patrick think his cat was playing with? What was it really?",
                    "Q2:  W in the middle of the desert?",
                    "Q3: What made the dog, the horse and the ox very angry? ",
                    "Q4:  How did the Djinn know the horse was complaining against the camel?",
                    "Q5:  The camel was looking at his own reflection in the pool. What does it suggest to you about the camel?",
                    "Q6:  The camel said, 'Humph' repeatedly. How did it affect him?",
                    "Q7: What, according to the Djinn, was the use of the 'humph'?",
                    'Q8:  "...he has never yet learnt to behave". In the light of this, what is the writer opinion about the camel?'
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
