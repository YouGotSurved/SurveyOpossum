class SessionController < ApplicationController

  def new
  end

  def login
    if !session[:author_id]
      author = Author.find_by_name(params[:name])
      if author && author.authenticate(params[:password])
        session[:author_id] = author.id
        session[:role] = "author"
        redirect_to surveys_path, notice: "You have succesfully logged in!"
      else
        render "login"
      end
      flash.now[:alert] = "Login failed: invalid email or password."
    else
      redirect_to surveys_path
    end
  end

  def logout
    session[:author_id] = nil
    session[:role] = nil
    redirect_to session_login_path, notice: "See you next time!"
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
