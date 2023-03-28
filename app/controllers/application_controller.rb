# frozen_string_literal: true

class ApplicationController < ActionController::Base
     helper_method :userSignedIn?
     def userSignedIn?
          current_user.present?
     end
end
