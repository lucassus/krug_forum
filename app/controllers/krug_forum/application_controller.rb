module KrugForum
  class ApplicationController < ActionController::Base
    helper_method :_current_user
    layout KrugForum.layout

    private

    def _current_user
      instance_eval &::KrugForum.current_user_method
    end
  end
end
