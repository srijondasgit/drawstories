 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'VASANTHA SURYA', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "A Gift of Chappals", audio_link: 'chapter1.mp3')

        sections = ['A smiling Rukku Manni threw open the door. Ravi and Meena rushed out, and Ravi pulled Mridu into the house. “Wait, let me take off my slippers,” protested Mridu. She set them out neatly near a pair of large black ones. Those were grey, actually, with dust. You could see the clear mark of every toe on the front part of each slipper.The marks for the two big toes were long and scrawny', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Had the beggar come to Rukku Manni’s house for the first time? Give reasons for your answer.",
                    "Q2: “A sharp V-shaped line had formed between her eyebrows.” What does it suggest to you about Rukku Manni’s mood?",
                                        
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
