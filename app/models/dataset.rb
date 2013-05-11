class Dataset < ActiveRecord::Base
  attr_accessible :audience, :collection_rate, :complete, :date_range, :description, :email, :format, :interest, :join_email_list, :location, :need_digitization, :need_storage, :purpose, :researchers, :title, :url
end
