class AccountController < ApplicationController
    before_action :authenticate_user!

    def index
        @posts = Post.all
    end

    def show
    end

    def create
        @reference = params[:reference]
        @images = params[:images]
        @post = Post.create({:reference => @reference, :images => @images, :active=> true})
        if @post.errors.blank?
            render json: { message: 'Posted successfully', user: @user}, status: 200
        else
            render json: { message: "cant share this post: #{@user.errors.full_messages.join(',')}"}, status: 403
        end
    end
end
