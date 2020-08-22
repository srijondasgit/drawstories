
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Popular Struggles and Movements", audio_link: 'chapter1.mp3')
        sections = ['In the earlier chapters we discussed why power sharing is important in a democracy and how different tiers of government and various social groups share power. In this chapter we will carry this discussion further and see how those who exercise power are constrained by the influence and pressure exerted on them. Democracy almost invariably involves conflict of interests and viewpoints. These differences are often expressed in organised ways. Those who are in power are required to balance these conflicting demands and pressures. We begin this chapter with a discussion of how struggles around conflicting demands and pressures shape democracy. This leads to an analysis of the different ways and organisations through which ordinary citizen can play a role in democracy. In this chapter, we look at the indirect ways of influencing politics, through pressure groups and movements.This leads us in the next chapter to the direct ways of controlling political power in the form of political parties.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  In what ways do pressure groups and movements exert influence on politics?',
                    'Q2:  Describe the forms of relationship between pressure groups and political parties?',
                    'Q3:  Explain how the activities of pressure groups are useful in the functioning of a democratic government.',
                    'Q4:  What is a pressure group? Give a few examples.',
                    'Q5:  What is the difference between a pressure group and a political party?',
                    'Q6:  Organisations that undertake activities to promote the interests of specific social sections such as workers, employees, teachers,and lawyers are called _____________________ groups.',
                    
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
