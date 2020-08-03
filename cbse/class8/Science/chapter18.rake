
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "HOW THE CAMEL GOT HIS HUMP", audio_link: 'chapter1.mp3')
        sections = ['Paheli and Boojho were very excited to hear the news that Taj Mahal in Agra is now one of the seven wonders of the world. But they were disappointed to hear that the beauty of this monument in white marble is being threatened by air pollution in the area surrounding the Taj. They were eager to know if something can be done to fight the air and water pollution.',
                    'We are all aware that our environment is not what it used to be. Our elders talk about the blue sky, clean water and fresh air that was available in their times. Now the media regularly reports on the falling quality of the environment. We ourselves feel the impact of the falling quality of air and water in our lives. The number of people suffering from diseases of the respiratory system, for example, is steadily rising.',
                    'We dread to imagine a time when clean air and water may no longer be available! You have learnt about the importance of air and water in your previous classes. In this chapter, we will study about the harmful changes taking place in our surroundings and their effects on our lives.',
                    '18.1 Air PollutionWe can survive for some time without food, but we cannot survive even for a few minutes without air. This simple fact tells us how important clean air is to us.',
                    'You already know that air consists of a mixture of gases. By volume, about 78% of this mixture is nitrogen and about 21% is oxygen. Carbon dioxide, argon, methane, ozone and water vapour are also present in very small quantities.',
                    'One of your observations in the above activity could be the differences in the amount of smoke in the atmosphere. Do you know where the smoke could have come from? Addition of such substances to the atmosphere modifies it. When air is contaminated by unwanted substances which have a harmful effect on both the living and the non-living, it is referred to as air pollution.',
                    '',
                    '18.2 How does Air Get Polluted?',
                    'The substances which contaminate the air are called air pollutants. Sometimes, such substances may come from natural sources like smoke and dust arising from forest fires or volcanic eruptions. Pollutants are also added to the atmosphere by human activities. The sources of air pollutants are factories (Fig. 18.2), power plants, automobile exhausts and burning of firewood and dung cakes.',
                    '',
                    'Many respiratory problems are caused by air pollution. Let us now try to find out the substances or pollutants which are present in the polluted air.',
                    'Have you noticed how rapidly the number of vehicles is increasing in our cities?',
                    'Vehicles produce high levels of pollutants like carbon monoxide, carbon dioxide, nitrogen oxides and smoke (Fig. 18.3). Carbon monoxide is produced from incomplete burning of fuels such as petrol and diesel. It is a poisonous gas. It reduces the oxygen-carrying capacity of the blood.',
                    
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What are the different ways in which water gets contaminated ?',
                    'Q2:  At an individual level, how can you help reduce air pollution?',
                    'Q3:  Clear, transparent water is always fit for drinking. Comment.',
                    'Q4:  Explain the differences between pure air and polluted air.',
                    'Q5:  Explain circumstances leading to acid rain. How does acid rain affect us?',
                    'Q6:  Which of the following is not a greenhouse gas? (a) Carbon dioxide (b) Sulphur dioxide (c) Methane (d) Nitrogen',
                    'Q7:  Describe the ‘Green House Effect’ in your own words.',
                    'Q8:  Prepare a brief speech on global warming that you have to make in your class.',
                    'Q9:  Describe the threat to the beauty of the Taj Mahal.',
                    'Q10:  Why does the increased level of nutrients in the water affect the survival of aquatic organisms?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
