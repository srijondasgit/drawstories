 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'JEROME K. JEROME', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "A Bicycle in good repair", audio_link: 'chapter1.mp3')

        sections = ['A man I knew proposed one evening we should go for a long bicycle ride together on the following day, and I agreed. I got up early, for me; I made an effort, and was pleased with myself. He came half an hour late; I was waiting for him in the garden. It was a lovely day.He said, “That’s a good-looking machine of yours.How does it run?”', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Did the front wheel really wobble? What is your opinion? Give a reason for your answer.",
                    "Q2: In what condition did the author find the bicycle when he returned from the tool shed?",
                    "Q3: “Nothing is easier than taking off the gear-case.” Comment on or continue this sentence in the light of what actually happens.",
                    "Q4: What special treatment did the chain receive?",
                    "Q5: The friend has two qualities — he knows what he is doing and is absolutely sure it is good. Find the two phrases in the text which mean the same.",
                    "Q6: Describe ‘the fight’ between the man and the machine. Find the relevant sentences in the text and write them.",
                    
                    
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
