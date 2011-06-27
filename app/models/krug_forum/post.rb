module KrugForum
  class Post < ActiveRecord::Base
    validates :subject, :presence => true
  end
end
