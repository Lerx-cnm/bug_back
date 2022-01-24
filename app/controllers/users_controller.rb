class UsersController < ApplicationController
    def create
        user = User.new(password: params[:pass], username: params[:user], name: params[:name], groupid: params[:gid])
    end
end