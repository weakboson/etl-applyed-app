# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

d, b, s = Game.create([
  { title: 'DARK SOULS' },
  { title: 'Bloodborne' },
  { title: 'SEKIRO: SHADOWS DIE TWICE | 隻狼' }
])

reviews = Review.create([
  { game: d, score: 10, comment: '最高' },
  { game: d, score:  3, comment: 'Demons Souls よりもっさりしている' },
  { game: d, score:  5, comment: 'ヘルプミー' },
  { game: b, score: 10, comment: '最高' },
  { game: b, score: 10, comment: '貞子' },
  { game: b, score:  1, comment: '血晶掘りが嫌だ' },
  { game: s, score: 10, comment: '最高' },
  { game: s, score:  3, comment: '難しすぎる……' },
  { game: s, score:  5, comment: '葦名一心が倒せない……' }
])
