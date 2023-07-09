class Gender < ActiveHash::Base
 
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '身体：男性, 精神：男性' },
    { id: 2, name: '身体：女性, 精神：女性' },
    { id: 3, name: '身体：男性, 精神：女性' },
    { id: 4, name: '身体：女性, 精神：男性' }
  ]

  include ActiveHash::Associations
  has_many :profiles
  
end