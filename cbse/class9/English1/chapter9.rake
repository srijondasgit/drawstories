
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'VAIKOM MUHAMMAD BASHEER [translated from the Malayalam by V. Abdulla]', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Snake and the Mirror", audio_link: 'chapter1.mp3')
        sections = ['“HAS a snake ever coiled itself round any part of your body? A full-blooded cobra?” All of us fell silent.The question came from the homeopath. The topic came up when we were discussing snakes. We listened attentively as the doctor continued with his tale.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  “The sound was a familiar one.” What sound did the doctor hear? What did he think it was? How many times did he hear it? (Find the places in the text.) When and why did the sounds stop?',
                    'Q2:  What two “important” and “earth-shaking” decisions did the doctor take while he was looking into the mirror?',
                    'Q3:  “I looked into the mirror and smiled,” says the doctor. A little later he says,“I forgot my danger and smiled feebly at myself.” What is the doctor’s opinion about himself when: (i) he first smiles, and (ii) he smiles again? In what way do his thoughts change in between, and why?',
                    'Q4:  This story about a frightening incident is narrated in a humorous way. What makes it humorous? (Think of the contrasts it presents between dreams and reality. Some of them are listed below.) 1. (i) The kind of person the doctor is (money, possessions) (ii) The kind of person he wants to be (appearance, ambition) taken with: attracted by 2020-,',
                   
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
