class Unit < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '時間' },
    { id: 3, name: '回' },
    { id: 4, name: '日' },
    { id: 5, name: 'ページ' }
  ]

  include ActiveHash::Associations
  has_many :fights
end