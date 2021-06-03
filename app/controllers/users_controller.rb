class UsersController < ApplicationController

    protect_from_forgery with: :null_session

    def create 
        @user = User.new(fullname:params[:user][:fullname], username:params[:user][:username], password:BCrypt::Password.create(params[:user][:password]))

        puts BCrypt::Password.create(params[:user][:password])

        if @user.save
          puts "565"
        else
          render :new
        end


        # puts BCrypt::Password.new("$2a$12$r/PmZLXI6FmW5IjWE1DEYe4Ro2CgG68IN2HBJ0jyKEXDFQhcgNGui") == "123123123"
    end

    def logincheck

        user = User.find_by(username: params[:user][:username])

        puts user[:fullname]
        
    end
end
