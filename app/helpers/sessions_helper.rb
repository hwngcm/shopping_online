module SessionsHelper
  attr_reader :cart

  def log_in user
    session[:user_id] = user.id
  end

  def logged_in?
    current_user.present?
  end

  def remember user
    user.remember
    cookies_permanent = cookies.permanent
    cookies_permanent.signed[:user_id] = user.id
    cookies_permanent[:remember_token] = user.remember_token
  end

  def current_user
    ss_userid = session[:user_id]
    if user_id = ss_userid
      @current_user ||= User.find_by id: ss_userid
    elsif user_id = cookies.signed[:user_id]
      user = User.find_by id: user_id
      if user && user.authenticated?(:remember, cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end

  def current_cart
    if session[:cart_id].present?
      @cart = Cart.find_by id: session[:cart_id]
    else
      @cart = Cart.create
      session[:cart_id] = cart.id
    end
  end

  def forget user
    user.forget
    cookies.delete :user_id
    cookies.delete :remember_token
  end

  def logout
    session.delete :user_id
    @current_user = nil
  end
end
