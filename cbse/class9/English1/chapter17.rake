
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'KENNETH ANDERSON', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Bond of Love", audio_link: 'chapter1.mp3')
        sections = ['I WILL begin with Bruno, my wife’s pet sloth bear. I got him for her by accident.Two years ago we were passing through the sugarcane fields near Mysore. People were driving away the wild pigs from the fields by shooting at them. Some were shot and some escaped. We thought that everything was over when suddenly a black sloth bear came out panting in the hot sun.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  “I got him for her by accident.” (i) Who says this? (ii) Who do ‘him’ and ‘her’ refer to? (iii) What is the incident referred to here?',
                    'Q2:  “He stood on his head in delight.”(i) Who does ‘he’ refer to? (ii) Why was he delighted?',
                    'Q3:  “We all missed him greatly: but in a sense we were relieved.” (i) Who does ‘we all’ stand for? (ii) Who did they miss? (iii) Why did they nevertheless feel relieved?',
                    'Q4:  On two occasions Bruno ate/drank something that should not be eaten/drunk. What happened to him on these occasions?',
                    'Q5:  Was Bruno a loving and playful pet? Why, then, did he have to be sent away?',
                    'Q6:  How was the problem of what to do with Bruno finally solved?',
                 
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
