
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "IS MATTER AROUND US PURE?", audio_link: 'chapter1.mp3')
        sections = ['How do we judge whether milk, ghee, butter,salt, spices, mineral water or juice that we buy from the market are pure?Have you ever noticed the word ‘pure’written on the packs of these consumables? For a common person pure means having no adulteration. But, for a scientist all these things are actually mixtures of different substances and hence not pure. For example, milk is actually a mixture of water, fat, proteins etc. When a scientist says that something is pure,it means that all the constituent particles of that substance are the same in their chemical nature. A pure substance consists of a single type of particles. In other words, a substance is a pure single form of matter.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Write the steps you would use for making tea. Use the words solution, solvent, solute, dissolve, soluble, insoluble, filtrate and residue.',
                    'Q2:  Classify each of the following as a homogeneous or heterogeneous mixture.soda water, wood, air, soil, vinegar, filtered tea.',
                    'Q3:  How would you confirm that a colourless liquid given to you is pure water?',
                    'Q4:  Which of the following materials fall in the category of a “puresubstance”?(a) Ice (b) Milk (c) Iron (d) Hydrochloric acid (e) Calcium oxide (f) Mercury (g) Brick (h) Wood (i) Air.',
                    'Q5:  Identify the solutions among the following mixtures.(a) Soil (b) Sea water (c) Air (d) Coal (e) Soda water.?',
                    'Q6: Which of the following will show “Tyndall effect”?(a) Salt solution (b) Milk (c) Copper sulphate solution (d) Starch solution.',
                     ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
