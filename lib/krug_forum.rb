require "krug_forum/engine"

module KrugForum
  DEFAULT_CURRENT_USER = Proc.new do
    if respond_to?(:current_user)
      current_user
    else
      raise "Cannot find :current_user method"
    end
  end

  def self.current_user_method(&block)
    @current_user = block if block
    @current_user || DEFAULT_CURRENT_USER
  end
end
