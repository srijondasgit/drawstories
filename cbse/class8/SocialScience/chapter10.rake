
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Changing World of Visual Arts", audio_link: 'chapter1.mp3')
        sections = ['When you look at a work of art – a painting, sculpture, etc. – it may not be obvious that like most other things, art too is influenced by the world around it. You may not realise that what you see also shapes your own ideas. In this chapter we will be looking at the changes in the world of visual arts during the colonial period, and how these changes are linked to the wider history of colonialism and nationalism.',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Describe in your own words one painting from this chapter which suggests that the British were more powerful than Indians. How does the artist depict this?',
                    'Q2:  Why did the scroll painters and potters come to Kalighat? Why did they begin to paint new themes?',
                    'Q3:  Why can we think of Raja Ravi Varma’s paintings as national?',
                    'Q4:  InwhatwaydidtheBritishhistorypaintingsinIndia reflect the attitudes of imperial conquerors?',
                    'Q5:  Why do you think some artists wanted to develop a national style of art?',
                    'Q6:  Whydidsomeartistsproducecheappopularprints? What influence would such prints have had on the minds of people who looked at them?',
                    'Q7:  Look at any tradition of art in your locality. Find out how it has changed in the last 50 years. You may check who supports the artists, and who looks at their art. Remember to examine the changes in styles and themes.'
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
