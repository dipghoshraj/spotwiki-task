class AccountController < ApplicationController
    before_action : authenticate_users!

    def index
    end

    def show
    end
end
