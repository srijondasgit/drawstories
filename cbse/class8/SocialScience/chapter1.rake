
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "CROP PRODUCTION AND MANAGEMENT", audio_link: 'chapter1.mp3')
        sections = ['Paheli and Boojho went to their uncle\'s house during the summer vacation. Their uncle is a farmer. One day they saw some tools like khurpi, sickle, shovel, plough, etc., in the field.',
                    'You have learnt that all living organisms require food. Plants can make their food themselves. Can you recall how green plants synthesise their own food? Animals including humans can not make their own food. So, where do animals get their food from?',
                    'But, first of all why do we have to eat food?',
                    'You already know that the energy from food is utilised by organisms for carrying out their various body functions, such as digestion, respiration and excretion. We get our food from plants, or animals, or both.',
                    '',
                    'In order to provide food for a large population— regular production, proper management and distribution of food is necessary.',
                    '',
                    '1.1Agricultural PracticesWhen plants of the same kind are grown and cultivated at one place on a large scale, it is called a crop. For example, crop of wheat means that all the plants grown in a field are that of wheat.',
                    'You already know that crops are of different types like cereals, vegetables and fruits. These can be classified on the basis of the season in which they grow.',
                    'India is a vast country. The climatic conditions like temperature, humidity and rainfall vary from one region to another. Accordingly, there is a richvariety of crops grown in different parts of the country. Despite this diversity, two broad cropping patterns can be identified. These are:(i) Kharif Crops : The crops which are sown in the rainy season are called kharif crops. The rainy season in India is generally from June to September. Paddy, maize, soyabean, groundnut, cotton, etc., are kharif crops.',
                    '(ii) Rabi Crops : The crops grown in the winter season are called rabi crops. Their time period is generally from October to March. Examples of rabi crops are wheat, gram, pea, mustard and linseed.',
                    'Besides these, pulses and vegetables are grown during summer at many places.',
                    'Cultivation of crops involves several activities undertaken by farmers over a period of time. You may find that these activities are similar to those carried out by a gardener or even by you when you grow ornamental plants in your house. These activities or tasks are referredto as agricultural practices. These activities are listed below.',
                    '(i) Preparation of soil (ii) Sowing(iii) Adding manure and fertilisers (iv) Irrigation(v) Protecting from weeds (vi) Harvesting(vii) Storage',
                    '',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Give two examples of each. (a) Kharif crop (b) Rabi crop',
                    'Q2:  Write a paragraph in your own words on each of the following. (a) Preparation of soil (b) Sowing (c) Weeding (d) Threshing',
                    'Q3:  Explain how fertilisers are different from manure.',
                    'Q4:  What is irrigation? Describe two methods of irrigation which conserve water.',
                    'Q5:  If wheat is sown in the kharif season, what would happen? Discuss.',
                    'Q6:  Explain how soil gets affected by the continuous plantation of crops in a field.',
                    'Q7:  What are weeds? How can we control them?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
