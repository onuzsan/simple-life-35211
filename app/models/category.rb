class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'マインド' },
    { id: 3, name: 'ライフスタイル' },
    { id: 4, name: '本' },
    { id: 5, name: 'インテリア・家電' },
    { id: 6, name: '音楽' },
    { id: 7, name: 'その他'}
   
  ]

  include ActiveHash::Associations
  has_many :items
  end
