
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "HOW THE CAMEL GOT HIS HUMP", audio_link: 'chapter1.mp3')
        sections = ['In this chapter, you will learn about changes that take place in the human body after which a person becomes capable of reproduction.',
                    'In Chapter 9, you have learnt about human reproductive organs. Here, we shall discuss the role that hormones play in bringing about changes that make a child grow into an adult.',
                    '10.1 Adolescence and PubertyBoojho was celebrating his 12th birthday. After his friends left, Boojho and Paheli began chatting with their parents. Paheli studies in an all-girls school. She started laughing. She remarked that many of Boojho\'s school friends, whom she met after a year, had suddenly shot up in height. Some of them were looking very funny with a hairy line above their lips. Her mother explained that the boys had grown up.',
                    'Growth begins from the day one is born. But upon crossing the age of 10 or 11, there is a sudden spurt in growth which becomes noticeable. The changes taking place in the body are part of growing up. They indicate that you areno longer a child but are on the way to becoming an adult.',
                    'Growing up is a natural process. The period of life, when the body undergoes changes, leading to reproductive maturity, is called adolescence. Adolescence begins around the age of 11 and lasts upto 18 or 19 years of age. Since this period covers the \'teens\' (13 to 18 or 19 years of age), adolescents are also called \'teenagers\'. In girls, adolescence may begin a year or two earlier than in boys. Also, the period of adolescence varies from person to person.',
                    'The human body undergoes several changes during adolescence. These changes mark the onset of puberty. The most important change which marks puberty is that boys and girls become capable of reproduction. Puberty ends when an adolescent reaches reproductive maturity.',
                    
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What is the term used for secretions of endocrine glands responsible for changes taking place in the body?',
                    'Q2:  Define adolescence.',
                    'Q3:  What is menstruation? Explain.',
                    'Q4:  List changes in the body that take place at puberty.',
                    'Q5:  Prepare a Table having two columns depicting names of endocrine glands and hormones secreted by them.',
                    'Q6:  What are sex hormones? Why are they named so? State their function.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
