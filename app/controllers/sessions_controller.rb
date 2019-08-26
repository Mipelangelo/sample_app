class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
<<<<<<< HEAD
      redirect_to user
=======
      redirect_to user 
>>>>>>> basic-login
      # Log the user in and redirect to the user's show page.
    else
      #create an error message.
    flash.now[:danger] = 'Invalid email/password combination'
    render 'new'
    end
  end

  def destroy
<<<<<<< HEAD
    log_out
    redirect_to root_url
=======
>>>>>>> basic-login
  end
end
