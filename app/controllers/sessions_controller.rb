class SessionsController < Matrack::BaseController
  def index
    # require "pry"; binding.pry
  end

  def create
    if params["password"] == params["confpswd"]
      user = User.new
      user.firstname = params["firstname"]
      user.lastname = params["lastname"]
      user.email = params["email"]
      user.password = params["password"]
      return @msg = "User successfully created" if user.save
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
      # require "pry"; binding.pry
      @msg = "Logged in"
    else
      @msg = "Invalid credentials"
    end
    render :index
  end

  def logout

  end

end