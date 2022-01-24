class GroupsController < ApplicationController 
    def create
        # group = Group.new(groupname: params[:groupname])   
        if Group.find_by(groupname: params[:groupname])
            group = Group.create(groupname: params[:groupname], groupid: gengroupid(), groupkey: gengroupkey())
            render json: {status: "confirmed", url: encryurl(group)}
        else
            render json: {status: "unconfirmed", error: "That name already exists"}
        end
    end

    private 

    def gengroupid()
        groupid = rand(100_000..999_999)
        if !Group.find_by(groupid: groupid)
            return groupid
        else 
            gengroupid()
        end
    end
    
    def encryurl(group)
        alph = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 "
        url = "http://localhost:3000/signup/#{group.groupname.tr(alph, group.groupkey)}"
    end
end