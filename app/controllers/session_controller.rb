class SessionController < ApplicationController

  def new
  end

  def login
    author = Author.find_by_name(params[:name])
    if author && author.authenticate(params[:password])
      session[:author_id] = author.id
      session[:role] = "author"
      redirect_to authors_path, notice: "You have succesfully logged in!"
    else
      flash.now[:alert] = "Login failed: invalid email or password."
      render "login"
    end
  end

  def logout
  end

  def signup
    
  end
end

#
#
# class SessionsController < ApplicationController
#
#   def new
#
#   end
#
#   def create
#     teacher = Teacher.find_by_email(params[:email])
#     if teacher && teacher.authenticate(params[:password])
#       session[:user_id] = teacher.id
#       session[:user_type] = "Teacher"
#
#       redirect_to root_path, notice: "You have succesfully logged in!"
#     else
#       flash.now[:alert] = "Login failed: invalid email or password."
#       render "new"
#     end
#   end
#
#   def destroy
#     session[:user_id] = nil
#     session[:user_type] = nil
#     redirect_to login_path, notice: "You have logged out."
#   end
#
# end
