
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Public Facilities", audio_link: 'chapter1.mp3')
        sections = ['Senior government officials like Mr Ramagopal live in Anna Nagar, Chennai. This area looks lush and green with lawns maintained by a generous spraying of water. Bungalows here have tap water for major part of the day. On days when the water supply is inadequate, Mr Ramagopal speaks to a senior official whom he knows in the municipal water board and a water tanker is easily arranged for his house.',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Why do you think there are so few cases of private water supply in the world?',
                    'Q2:  Do you think water in Chennai is available and affordable by all? Discuss.',
                    'Q3:  How is the sale of water by farmers to water dealers in Chennai affecting the local people? Do you think local people can object to such exploitation of ground water? Can the government do anything in this regard?',
                    'Q4:  Why are most of the private hospitals and private schools located in major cities and not in towns or rural areas?',
                    'Q5:  Do you think the distribution of public facilities in our country is adequate and fair? Give an example of your own to explain.',
                    'Q6:  Are the above public facilities shared equally by all the people in your area? Elaborate.',
                    'Q7:  Data on some of the public facilities are collected as part of the Census. Discuss with your teacher when and how the Census is conducted.',
                    'Q8:  Private educational institutions – schools, colleges, universities, technical and vocational training institutes are coming up in our country in a big way. On the other hand, educational institutes run by the government are becoming relatively less important. What do you think would be the impact of this? Discuss.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
