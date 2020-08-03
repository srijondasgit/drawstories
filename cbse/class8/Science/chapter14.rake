
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Chemical Effects of Electric Current", audio_link: 'chapter1.mp3')
        sections = ['Your elders might have cautioned you against touching an electrical appliance with wet hands. But do you know why it is dangerous to touch an electrical appliance with wet hands?',
                    'We have learnt earlier that the materials, which allow electric current to pass through them, are good conductors of electricity. On the other hand, materials, which do not allow electric current to pass through them easily, are poor conductors of electricity.',
                    'In Class VI, we made a tester (Fig.14.1) to test whether a particular material allows the electric current to pass through it or not. Do you recall how the tester helped us in deciding that?',
                    'We found that metals such as copper and aluminium conduct electricity whereas materials such as rubber,plastic and wood do not conduct electricity. However, so far we have used our tester to test materials which were in solid state. But what about liquids? Do liquids also conduct electricity? Let us find out.',
                    
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  A tester is used to check the conduction of electricity through two liquids, labeled A and B. It is found that the bulb of the tester glows brightly for liquid A while it glows very dimly for liquid B. You would conclude that (i) liquid A is a better conductor than liquid B. (ii) liquid B is a better conductor than liquid A. (iii) both liquids are equally conducting. (iv) conducting properties of liquid cannot be compared in this manner.',
                    'Q2:  Does pure water conduct electricity? If not, what can we do to make it conducting?',
                    'Q3:  In case of a fire, before the firemen use the water hoses, they shut off the main electrical supply for the area. Explain why they do this.',
                    'Q4:  A child staying in a coastal region tests the drinking water and also the seawater with his tester. He finds that the compass needle deflects more in the case of seawater. Can you explain the reason?',
                    'Q5:  Is it safe for the electrician to carry out electrical repairs outdoors during heavy downpour? Explain.',
                    'Q6:  Paheli had heard that rainwater is as good as distilled water. So she collected some rainwater in a clean glass tumbler and tested it using a tester. To her surprise she found that the compass needle showed deflection. What could be the reasons?',
                    'Q7:  Prepare a list of objects around you that are electroplated.',
                    'Q8:  The process that you saw in Activity 14.7 is used for purification of copper. A thin plate of pure copper and a thick rod of impure copper are used as electrodes. Copper from impure rod is sought to be transfered to the thin copper plate. Which electrode should be attached to the positive terminal of battery and why?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
