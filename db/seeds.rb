# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.create!(
  [
    {
      title: "タイトル",
      content: "コンテンツ"
    },
    {
      title: "坊ちゃん",
      content: "親譲りの無鉄砲で小供の時から損ばかりしている。
      小学校に居る時分学校の二階から飛び降りて一週間ほど腰を抜かした事がある。
      なぜそんな無闇をしたと聞く人があるかも知れぬ。
      別段深い理由でもない。新築の二階から首を出していたら、
      同級生の一人が冗談に、いくら威張っても、そこから飛び降りる事は出来まい。
      弱虫やーい。と囃したからである。
      小使いに負ぶさって帰って来た時、
      おやじが大きな眼をして二階ぐらいから飛び降りて腰を抜かす奴があるかと云ったから、
      この次は抜かさずに飛んで見せますと答えた。"
    },
    {
      title: "吾輩は猫である",
      content: "吾輩わがはいは猫である。名前はまだ無い。
　    どこで生れたかとんと見当がつかぬ。
　    何でも薄暗いじめじめした所でニャーニャー泣いていた事だけは記憶している。
　    吾輩はここで始めて人間というものを見た。
　    しかもあとで聞くとそれは書生という人間中で一番獰悪な種族であったそうだ。
　    この書生というのは時々我々を捕えて煮て食うという話である。
　    しかしその当時は何という考もなかったから別段恐しいとも思わなかった。
　    ただ彼の掌に載せられてスーと持ち上げられた時何だかフワフワした感じがあったばかりである。
　    掌の上で少し落ちついて書生の顔を見たのがいわゆる人間というものの見始めであろう。
　    この時妙なものだと思った感じが今でも残っている。
　    第一毛をもって装飾されべきはずの顔がつるつるしてまるで薬缶だ。
　    その後猫にもだいぶ逢ったがこんな片輪には一度も出会わした事がない。
　    のみならず顔の真中があまりに突起している。
　    そうしてその穴の中から時々ぷうぷうと煙を吹く。
　    どうも咽せぽくて実に弱った。
　    これが人間の飲む煙草というものである事はようやくこの頃知った。
      "
    }
  ]  
)