
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Judiciary", audio_link: 'chapter1.mp3')
        sections = ['A glance at the newspaper provides you a glimpse of the range of work done by the courts in this country. But can you think of why we need these courts? As you have read in Unit 2, in India we have the rule of law. What this means is that laws apply equally to all persons and that a certain set of fixed procedures need to be followed when a law is violated. To enforce this rule of law, we have a judicial system that consists of the mechanism of courts that a citizen can approach when a law is violated. As an organ of government, the judiciary plays a crucial role in the functioning of India’s democracy. It can play this role only because it is independent. What does an ‘independent judiciary’ mean? Is there any connection between the court in your area and the Supreme Court in New Delhi? In this chapter, you will find answers to these questions.',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  You read that one of the main functions of the judiciary is ‘upholding the law and Enforcing Fundamental Rights’. Why do you think an independent judiciary is necessary to carry out this important function?',
                    'Q2:  Re-read the list of Fundamental Rights provided in Chapter 1. How do you think the Right to Constitutional Remedies connects to the idea of judicial review?',
                    'Q3:  Keeping the Sudha Goel case in mind, tick the sentences that are true and correct the ones that are false. (a) The accused took the case to the High Court because they were unhappy with the decision of the Trial Court. (b) They went to the High Court after the Supreme Court had given its decision. (c) If they do not like the Supreme Court verdict, the accused can go back again to the Trial Court.',
                    'Q4:  Why do you think the introduction of Public Interest Litigation (PIL) in the 1980s is a significant step in ensuring access to justice for all?',
                    'Q5:  Re-read excerpts from the judgment on the Olga Tellis vs Bombay Municipal Corporation case. Now write in your own words what the judges meant when they said that the Right to Livelihood was part of the Right to Life.',
                    'Q6:  Write a story around the theme, ‘Justice delayed is justice denied’.',
                    'Q7:  Make sentences with each of the glossary words given on the next page.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
