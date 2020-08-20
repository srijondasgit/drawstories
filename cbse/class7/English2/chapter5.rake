 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'RUDYARD KIPLING', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Golu grows a nose", audio_link: 'chapter1.mp3')

        sections = ['LONG, long ago the elephant had no trunk.He had only a bulgy nose, as big as a boot. He could wiggle it from side to side, but couldn’t pick up things with it.There was a baby elephant called Golu. He, too, had no trunk but only a bulgy nose, as small as a small boot. Golu was full of questions.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Whom does Golu ask, “Why don’t you ever fly like other birds?”",
                    "Q2: Which uncle of Golu had red eyes?",
                    "Q3: Who advised Golu to go to the Limpopo river?",
                    "Q4: Why did Golu go to the river?",
                    "Q5: What did the crocodile do to show that it was a real crocodile?",
                    "Q6: Who helped Golu on the bank of the river?",
                    "Q7: Name two things the elephant can do with his trunk, and two he cannot.",
                  
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
