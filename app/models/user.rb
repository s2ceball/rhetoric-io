class User < ActiveRecord::Base
  attr_accessible :avatar, :email, :institution, :name, :nickname, :title

  has_many :authorizations

  def self.create_from_hash!(hash)
    create(name: hash['info']['name'], email: hash['info']['email'], nickname: hash['info']['nickname'], avatar: hash['info']['image'])
  end

  def update_from_hash(hash)
    self.avatar = hash['info']['image']
    self.save
  end

end
