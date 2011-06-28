module KrugForum::Extensions
  module User

    def self.included(base)
      base.send(:include, InstanceMethods)
      base.has_many :krug_forum_posts, :class_name => 'KrugForum::Post'
    end

    module InstanceMethods
      def posts_count
        self.krug_forum_posts.count
      end
    end

  end
end
