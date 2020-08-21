
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "CONSTITUTIONAL DESIGN", audio_link: 'chapter1.mp3')
        sections = ['We noted in the previous chapter that in a democracy the rulers are not free to do what they like. There are certain basic rules that the citizens and the government have to follow. All such rules together are called constitution. As the supreme law of the country, the constitution determines the rights of citizens, the powers of the government and how the government should function.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Here are some false statements. Identify the mistake in each case and rewrite these correctly based on what you have read in this chapter.(a) Leaders of the freedom movement had an open mind about whether the country should be democratic or not after independence.(b) Members of the Constituent Assembly of India held the same views on all provisions of the Constitution.(c) A country that has a constitution must be a democracy.(d) Constitution cannot be amended because it is the supreme law of a country.',
                    'Q2:  Which of these was the most salient underlying conflict in the making of a democratic constitution in South Africa? (a) Between South Africa and its neighbours (b) Between men and women (c) Between the white majority and the black minority (d) Between the coloured minority and the black majority',
                    'Q3:  Which of these is a provision that a democratic constitution does not have? (a) Powers of the head of the state (b) Name of the head of the state (c) Powers of the legislature (d) Name of the country',
                    'Q4:  Read again the extracts from Nehru’s speech ‘Tryst with Destiny’ and answer the following: (a) Why did Nehru use the expression “not wholly or in full measure” in the first sentence?(b) What pledge did he want the makers of the Indian Constitution to take?(c) “The ambition of the greatest man of our generation has been to wipe every tear from every eye”. Who was he referring to?',
                    'Q5:  How did your school celebrate the Constitution Day on November exercises 26th? Prepare a brief report.',
                    'Q6: Here are different opinions about what made India a democracy.How much importance would you give to each of these factors? (a) Democracy in India is a gift of the British rulers. We received training to work with representative legislative institutions under the British rule.(b) Freedom Struggle challenged the colonial exploitation and denial of different freedoms to Indians. Free India could not be anything but democratic.(c) We were lucky to have leaders who had democratic convictions. The denial of democracy in several other newly independent countries shows the important role of these leaders.',
                          ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
