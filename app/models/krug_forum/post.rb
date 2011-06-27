module KrugForum
  class Post < ActiveRecord::Base
    belongs_to :user

    validates :subject, :presence => true
  end
end
