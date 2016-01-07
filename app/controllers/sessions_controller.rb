class SessionsController < Matrack::BaseController
  def index
    user = User.last
      require "pry"; binding.pry
  end

  def create
    if params["password"] == params["confpswd"]
      user = User.new
      user.firstname = params["firstname"]
      user.lastname = params["lastname"]
      user.email = params["email"]
      user.password = params["password"]
      if user.save
        session[:email] = user.email
        redirect_to "/todolist/new"
      end
      return @msg = "User not created"
    end
    @msg = "Password mismatch"
    render :index
  end

  def login
    email = params["email"]
    password = authenticate(params["password"])
    if User.find_cols(email: email, password: password)
      session[:email] = email
      redirect_to "tasks"
    else
      @msg = "Invalid credentials"
      render :index
    end
  end

  def logout
    session.clear
    redirect_to "/"
  end

end