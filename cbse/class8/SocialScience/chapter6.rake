
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Colonialism and the City", audio_link: 'chapter1.mp3')
        sections = ['What Happened to Cities Under Colonial Rule? You have seen how life in the countryside changed after the establishment of British power. What happened to the cities during the same period? The answer will depend on the kind of town or city we are discussing. The history of a temple town like Madurai will not be the same as that of a manufacturing town like Dacca, or a port like Surat, or towns that simultaneously served many different functions.',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Identify three differences in the city design of New Delhi and Shahjahanabad.',
                    'Q2:  Who lived in the “white” areas in cities such as Madras?',
                    'Q3:  What is meant by de-urbanisation?',
                    'Q4:  Why did the British choose to hold a grand Durbar in Delhi although it was not the capital?',
                    'Q5:  How did the Old City of Delhi change under British rule?',
                    'Q6:  How did the Partition affect life in Delhi?',
                    'Q7:  Find out the history of the town you live in or of any town nearby. Check when and how it grew, and how it has changed over the years. You could look at the history of the bazaars, the buildings, cultural institutions, and settlements.',
                    'Q8:  Make a list of at least ten occupations in the city, town or village to which you belong, and find out how long they have existed. What does this tell you about the changes within this area?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
