
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "PHYSICAL FEATURES OF INDIA", audio_link: 'chapter1.mp3')
        sections = ['You have already learnt earlier that India is a vast country with varied land forms. What kind of terrain do you live in? If you live in the plains, you are familiar with the vast stretches of plain land. In contrast, if you live in hilly region, the rugged terrain with mountains and valleys are common features. In fact, our country has practically all major physical features of the earth, i.e., mountains,plains, deserts, plateaus and islands.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Answer the following questions briefly.(i) What is the bhabar?(ii) Name the three major divisions of the Himalayas from north to south.(iii) Which plateau lies between the Aravali and the Vindhyan ranges? (iv) Name the island group of India having coral origin.',
                    'Q2:  Give an account of the Northern Plains of India',
                    'Q3:  Distinguish between (i) Bhangar and Khadar (ii) Western Ghats and Eastern Ghats',
                    'Q4:  Which are the major physiographic divisions of India? Contrast the relief of the Himalayan region with that of the Peninsular plateau.',
                    'Q5:  Write short notes on the following. (i) The Indian Desert (ii) The Central Highlands (iii) The Island groups of India',
                          ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
