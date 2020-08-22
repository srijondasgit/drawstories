
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Sermon at Benares", audio_link: 'chapter1.mp3')
        sections = ['GAUTAMA Buddha (563 B.C. – 483 B.C.) began life as a prince named Siddhartha Gautama, in northern India. At twelve, he was sent away for schooling in the Hindu sacred scriptures and four years later he returned home to marry a princess. They had a son and lived for ten years as befitted royalty. At about the age of twenty-five, the Prince, heretofore shielded from the sufferings of the world, while out hunting chanced upon a sick man, then an aged man, then a funeral procession, and finally a monk begging for alms. These sights so moved him that he at once went out into the world to seek enlightenment concerning the sorrows he had witnessed.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  When her son dies, Kisa Gotami goes from house to house. What does she ask for? Does she get it? Why not?',
                    'Q2:  Kisa Gotami again goes from house to house after she speaks with the   Buddha. What does she ask for, the second time around? Does she get it? Why not?',
                    'Q3:  What does Kisa Gotami understand the second time that she failed to understand the first time? Was this what the Buddha wanted her to understand?',
                    'Q4:  Why do you think Kisa Gotami understood this only the second time? In what way did the Buddha change her understanding?',
                    'Q5:  How do you usually understand the idea of ‘selfishness’? Do you agree with Kisa Gotami that she was being ‘selfish in her grief ’?',  
                   ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
