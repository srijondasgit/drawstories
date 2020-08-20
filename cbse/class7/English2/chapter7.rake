 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Zakir Husain', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Chandni", audio_link: 'chapter1.mp3')

        sections = ['ONCE upon a time there lived an old man in Almora. He was popularly known as Abbu Khan. He lived all alone except for a few goats which he always kept as pets. He gave his goats funny names such as Kalua, Moongia or Gujri. He would take them out for grazing during the day and talk to them as one talks to one’s own children; at night he would bring them back to his little hut and put a string round the neck of each goat.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Why did the wise old bird say, “Chandni is the winner”?",
                    "Q2: “Death in an open field is better than life in a small hut,” Chandni said to herself. Was it the right decision? Give reasons for your answer.",
                    "Q3: Freedom is life. Discuss this with reference to ‘Chandni’ and ‘I Want Something in a Cage’",
                                     
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
