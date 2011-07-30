class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :ensure_domain

  @@APP_DOMAIN = 'interfact.net'

  def ensure_domain
    if request.env['HTTP_HOST'] != @@APP_DOMAIN
      # HTTP 301 is a "permanent" redirect
      redirect_to "http://#{@@APP_DOMAIN}", :status => 301
    end
  end
  
  def ApplicationController.domain
    @@APP_DOMAIN
  end
end
