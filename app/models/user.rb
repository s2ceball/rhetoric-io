class User < ActiveRecord::Base
  attr_accessible :avatar, :email, :institution, :name, :nickname, :title
end
