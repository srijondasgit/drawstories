
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Mineral and Power Resources", audio_link: 'chapter1.mp3')
        sections = ['Kiri is visiting Sukant in his native place near Dhanbad. Kiri is amazed to see that large areas were black. “Sukant, why is this place so black and dusty?” “This is because of the coal mines nearby. Do you see the trucks? They are carrying the mineral coal”. “What are minerals?,” asks Kiri. Sukant says, “Have you ever seen a baker baking biscuits? The flour, milk, sugar and sometimes eggs are mixed together. While eating the baked biscuits can you see these ingredients separately? Just as in the biscuits, there are a number of things that you cannot see, rocks on this earth have several materials called minerals mixed in them. These minerals are scattered throughout the earth’s rocky crust”.',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Name any three common minerals used by you every day.',
                    'Q2:  What is an ore? Where are the ores of metallic minerals generally located?',
                    'Q3:  Name two regions rich in natural gas resources.',
                    'Q4:  Which sources of energy would you suggest for (a) rural areas (b) coastal areas (c) Arid regions',
                    'Q5:  Give five ways in which you can save energy at home.',
                    'Q6:  Distinguish between the followings - Conventional and non conventional sources of energy',
                    'Q7:  Distinguish between the followings - Biogas and natural gas',
                    'Q8:  Distinguish between the followings - Ferrous and nonferrous minerals',
                    'Q9:  Distinguish between the followings - Metallic and nonmetallic minerals',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
