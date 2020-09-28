class ApplicationController < ActionController::Base
    helper_method :current_post

    @@current_post_id

    def current_post(id:)
        @@current_post_id = id
    end
end
