//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Дарья Воробей
// On: 7/31/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

import Foundation

class ItemViewModel{
    
    public var itemArray = [Item]()
    var tmpItem: Item? = nil
    
    func fillArray() -> [Item]{
        tmpItem = Item(title: "Man's best friend", mark: "Story", image: "story-1", story: """
A man had a little dog, and he was very fond of it. He would pat its head, and take it on his knee, and talk to it. Then he would give it little bits of food from his own plate.

A donkey looked in at the window and saw the man and the dog.

"Why does he not make a pet of me?" said the donkey.

"It is not fair. I work hard, and the dog only wags its tail, and barks, and jumps on its master's knee. It is not fair."

Then the donkey said to himself, "If I do what the dog does, he may make a pet of me."

So the donkey ran into the room. It brayed as loudly as it could. It wagged its tail so hard that it knocked over a jar on the table. Then it tried to jump on to its master's knee.

The master thought the donkey was mad, and he shouted, "Help! Help!" Men came running in with sticks, and they beat the donkey till it ran out of the house, and they drove it back to the field.

"I only did what the dog does," said the donkey," and yet they make a pet of the dog, and they beat me with sticks. It is not fair.
""", gallery: nil, storyPath: [.story1path1, .story1path2, .story1path3])
        
        itemArray.append(tmpItem!)
        
        tmpItem = Item(title: "Minsk", mark: "Gallery", image: "minsk-0", story: nil, gallery: ["minsk-0", "minsk-1", "minsk-2", "minsk-3", "minsk-4", "minsk-5", "minsk-6"])
        itemArray.append(tmpItem!)
        
        tmpItem = Item(title: "The smart little Bird", mark: "Story", image: "story-2", story: """
There was a little smart Bird in a tree.

A big grey Cat came to the tree. He saw the little Bird and wanted to eat her.

“I’ll have the bird for my breakfast”, thought the Cat.

“Good morning, Miss Bird”, said the Cat with a pleasant voice.

“Good morning, Mr. Cat”, answered the Bird.

“Have you heard the good news?” asked the Cat.

“What news?” said the Bird.

The Cat answered with a smile: “Very good news, my little Bird! All animals are good friends now! We are friends: all cats, dogs and birds. Come to me! I want to speak to you, my friend!”

But the little Bird was very smart. She said:

“Of course, you are my friend. But I see a lot of dogs from my tree and they are on their way to this tree.”

“Oh, dogs!.. I must go home!” exclaimed the Cat.

“But why are you leaving, my dear friend? The dogs are our friends, too,” said the Bird.

“I think they haven’t heard the news”, answered the Cat and ran home.
""", gallery: nil, storyPath: [.story2path1, .story2path2])
        itemArray.append(tmpItem!)
        tmpItem = Item(title: "Apple", mark: "Gallery", image: "apple-0", story: nil, gallery: ["apple-0", "apple-1", "apple-2", "apple-3", "apple-4", "apple-5", "apple-6", "apple-7"])
        itemArray.append(tmpItem!)
        tmpItem = Item(title: "Steven Paul Jobs", mark: "Story", image: "story-3", story: """
Steven Paul Jobs was an American business magnate, industrial designer, investor, and media proprietor. He was the chairman, chief executive officer (CEO), and co-founder of Apple Inc.; the chairman and majority shareholder of Pixar; a member of The Walt Disney Company's board of directors following its acquisition of Pixar; and the founder, chairman, and CEO of NeXT. Jobs is widely recognized as a pioneer of the personal computer revolution of the 1970s and 1980s, along with his early business partner and fellow Apple co-founder Steve Wozniak.
""", gallery: nil, storyPath: [.story4path1, .story4path2])
        itemArray.append(tmpItem!)
        tmpItem = Item(title: "Code", mark: "Gallery", image: "code-0", story: nil, gallery: ["code-0", "code-1", "code-2", "code-3", "code-4", "code-5", "code-6", "code-7", "code-8", "code-9", "code-10"])
        itemArray.append(tmpItem!)
        tmpItem = Item(title: "Coffee", mark: "Story", image: "story-4", story: """
Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. All fruit must be further processed from a raw material—the fruit and seed—into a stable, raw product; un-roasted, green coffee. To process the berries, the seed is separated from the fruit to produce green coffee. Green coffee is then roasted, a process which transforms the raw product (green coffee) into a consumable product (roasted coffee). Roasted coffee is ground into a powder and mixed with water to produce a cup of coffee.
""", gallery: nil, storyPath: [.story3path1, .story3path1, .story3path1, .story3path1])
        itemArray.append(tmpItem!)
        tmpItem = Item(title: "Tesla", mark: "Gallery", image: "tesla-0", story: nil, gallery: ["tesla-0", "tesla-1", "tesla-2", "tesla-3", "tesla-4", "tesla-5", "tesla-6", "tesla-7", "tesla-8"])
        itemArray.append(tmpItem!)
        
        
        tmpItem = Item(title: "Italy", mark: "Story", image: "story-6", story: """
Italy has a major advanced capitalist mixed economy, ranking as the third-largest in the Eurozone and the eighth-largest in the world. A founding member of the G7, the Eurozone and the OECD, it is regarded as one of the world's most industrialised nations and a leading country in world trade and exports. It is a highly developed country, with the world's 8th highest quality of life in 2005 and the 26th Human Development Index. The country is well known for its creative and innovative business, a large and competitive agricultural sector(with the world's largest wine production), and for its influential and high-quality automobile, machinery, food, design and fashion industry.
""", gallery: nil, storyPath: [.story4path1, .story4path2])
        itemArray.append(tmpItem!)
        tmpItem = Item(title: "Cakes", mark: "Gallery", image: "cakes-0", story: nil, gallery: ["cakes-0", "cakes-1", "cakes-2", "cakes-3", "cakes-4"])
        itemArray.append(tmpItem!)
        tmpItem = Item(title: "Coffee", mark: "Story", image: "story-5", story: """
Tokyo was selected as the host city during the 125th IOC Session in Buenos Aires, Argentina, on 7 September 2013. Originally scheduled to take place from 24 July to 9 August 2020, the event was postponed to 2021 in March 2020 as a result of the COVID-19 pandemic, the first such instance in the history of the Olympic Games (previous games had been cancelled but not rescheduled). However, the event retains the Tokyo 2020 name for marketing and branding purposes. It is being held largely behind closed doors with no public spectators permitted due to the declaration of a state of emergency. The Summer Paralympics will be held between 24 August and 5 September 2021, 16 days after the completion of the Olympics.
""", gallery: nil, storyPath: [.story3path1, .story3path1, .story3path1, .story3path1])
        itemArray.append(tmpItem!)
        tmpItem = Item(title: "Sky", mark: "Gallery", image: "sky-0", story: nil, gallery: ["sky-0", "sky-1", "sky-2", "sky-3", "sky-4"])
        itemArray.append(tmpItem!)
        return itemArray
    }
    
    func numberOfRowsInSection(section: Int) -> Int {
            if itemArray.count != 0 {
                return itemArray.count
            }
            return 0
        }
}
