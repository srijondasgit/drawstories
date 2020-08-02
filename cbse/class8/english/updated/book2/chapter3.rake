
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'OSCAR WILDE', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Selfish Giant", audio_link: 'chapter1.mp3')
        sections = ['EVERY afternoon, as they were coming from school, the children used to go and play in the Giant\'s garden.',
                    'It was a large lovely garden, with soft green grass. Here and there over the grass stood beautiful flowers like stars, and there were twelve peach-trees that in the springtime broke out into delicate blossoms of pink and pearl, and in the autumn bore rich fruit. The birds sat on the trees and sang so sweetly that the children used to stop their games in order to listen to them. “How happy we are here!” they cried to each other.',
                    'One day the Giant came back. He had been to visit his friend, the Cornish ogre, and had stayed with him for seven years. When he arrived he saw the children playing in the garden.',
                    '“What are you doing here?” he cried in a very gruff voice, and the children ran away.',
                    '"My own garden is my own garden,” said the Giant; “anyone can understand that, and I will allow nobody to play in it but myself.” So he built a high wall all round it, and put up a notice-board:TRESPASSERS WILL BE PROSECUTEDHe was a very selfish Giant.',
                    'The poor children had now nowhere to play. They tried to playon the road, but the road was very dusty and full of hard stones, and they did not like it. They used to wander round the high walls when their lessons were over, and talk about the beautiful garden inside. “How happy we were there!” they said to each other.',
                    'Then the Spring came, and all over the country there were little blossoms and little birds. Only in the garden of the Selfish Giant it was still winter. The birds did not care to sing in it as there were no children, and the trees forgot to blossom. Once a beautiful flower put its head out from the grass, but when it saw the notice-board it was so sorry for the children that it slipped back into the ground again, and went off to sleep. The only people who were pleased were the Snow and the Frost. “Spring has forgotten this garden,” they cried, “so we will live here all the year round.” The Snow covered up the grass with her great white cloak, and the Frost painted all the trees silver. Then they invited the North Wind to stay with them, and he came. He was wrapped in furs, and he roared all day about the garden, and blew the chimney-pots down. \'\'This is a delightful spot,” he said, “we must ask Hail on a visit.” So the Hail came. Every day for three hours he rattled on the roof of the castle till he broke most of the slates, and then he ran round and round the garden as fast as he could go. He was dressed in grey, and his breath was like ice.',
                    '“I cannot understand why the Spring is so late in coming,” said the Selfish Giant, as he sat at the window and looked out at his cold, white garden; “I hope there will be a change in the weather.”But the Spring never came, nor the Summer. The Autumn gave golden fruit to every garden, but to the Giant\'s garden she gave none. “He is too selfish,” she said. So it was always Winter there, and the North Wind and the Hail, and the Frost, and the Snow danced about through the trees.',
                    'One morning the Giant was lying awake in bed when he heard some lovely music. It sounded so sweet to his ears that he thought it must be the King\'s musicians passing by. It was really only a little linnet singing outside his window, but it was so long since he had heard a bird singing in his garden that it seemed to him to be the most beautiful music in the world. Then the Hail stopped dancing over his head, and the North Wind ceased roaring, and a delicious perfume came to him through the open casement. “I believe the Spring has come at last,” said the Giant; and he jumped out of bed and looked out.',
                    'He saw a most wonderful sight. Through a little hole in the wall the children had crept in, and they were sitting in the branches of the trees. In every tree that he could see there was a little child. And the trees were so glad to have the children back again that they had covered themselves with blossoms, and were waving their arms gently above the children\'s heads. The birds were flying about and twittering with delight, and the flowers were looking up through the green grass and laughing. It was a lovely scene. Only in one corner it was still winter. It was the farthest corner of the garden, and in it was standing a little boy. He was so small that he could not reach up to the branches of the tree, and he was wandering all round it, crying bitterly. The poor tree was still covered with frost and snow, and the North Wind was blowing and roaring above it. “Climb up, little boy!” said the Tree, and it bent its branches down as low as it could; but the boy was too tiny.',
                    'And the Giant\'s heart melted as he looked out. “How selfish I have been!” he said; “now I know why the Spring would not come here. I will put that poor little boy on the top of the tree, and then I will knock down the wall, and my garden shall be the children\'s playground for ever and ever.” He was really very sorry for what he had done.',
                    'So he crept downstairs and opened the front door quite softly, and went out into the garden. But when the children saw him they were so frightened that they all ran away, and the garden became winter again. Only the little boy did not run, for his eyes were so full of tears that he did not see the Giant coming. And the Giant stole up behind him and took him gently in his hands, and put him up into the tree. Andthe tree broke at once intoblossom, and the birdscame and sang on it, andthe little boy stretched outhis two arms and flungthem round the Giant\'sneck, and kissed him.',
                    'And the other children,when they saw that theGiant was not wicked anylonger, came running back, and with them came the Spring. “It is your garden now, little children,” said the Giant, and he took a great axe and knocked down the wall. And when the people were going to market at twelve o\'clock they found the Giant playing with the children in the most beautiful garden they had ever seen.',
                    'All day long they played, and in the evening they came to the Giant to bid him good-bye.',
                    '“But where is your little companion?” he said; “the boy I put into the tree?” The Giant loved him the best because he had kissed him.',
                    '“We don\'t know,” answered the children. “He has gone away.”“You must tell him to be sure and come tomorrow,” said the Giant. But the children said that they did not know where he lived, and had never seen him before; and the Giant felt very sad.',
                    'Every afternoon, when school was over, the children came and played with the Giant. But the little boy whom the Giant loved was never seen again. The Giant was very kind to all the children, yet he longed for his little friend, and often spoke of him. “How I would like to see him!” he used to say.',
                    'Years went by, and the Giant grew very old and feeble. He could not play about anymore, so he sat in a huge armchair, and watched the children at their games and admired his garden. “I have many beautiful flowers,” he said; “but the children are the most beautiful flowers of all.”One winter morning he looked out of his window as he was dressing. He did not hate the winter now, for he knew that it was merely the Spring asleep, and that the flowers were resting.',
                    'Suddenly he rubbed his eyes in wonder and looked and looked. It certainly was a marvellous sight. In the farthest corner of the garden was a tree quite covered with lovely white blossoms. Its branches were golden, and silver fruit hung down from them, and underneath it stood the little boy he had loved.',
                    'Downstairs ran the Giant in great joy, and out into the garden. He hastened across the grass, and came near to the child. And when he came quite close his face grew red with anger, and he said, “Who hath dared to wound thee?” For on the palms of the child\'s hands were the prints of two nails, and the prints of two nails were on the little feet.',
                    '“Who hath dared to wound thee?” cried the Giant; “tell me, that I may take my big sword and slay him.”“Nay!” answered the child: “but these are the wounds of Love.”“Who art thou?” said the Giant, and a strange awe fell on him, and he knelt before the little child.',
                    'And the child smiled on the Giant, and said to him, “You let me play once in your garden; today you shall come with me to my garden, which is paradise.”And when the children ran in that afternoon, they found the Giant lying dead under the tree, all covered with white blossoms.',
        
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1: Why is the Giant called selfish?',
                    'Q2: Was the Giant happy or sad over the state of the garden?',
                    'Q3: On one occasion the children said: “How happy we are here!” Later they said: “How happy we were there!” What are they referring to in both the cases?',
                    'Q4: What effect did the linnet’s song have over Hail and the North Wind?',
                    'Q5: When spring came, it was still winter in the garden. What does
                    winter stand for or indicate here?',
                    'Q6: Winter has been presented like a story with its own characters and their activities. Describe the story in your own words.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
