class GreetingsController < ApplicationController
  
  caches_page :hello

  def hello
  	@message = "I'm a Rails 4.0.0 Application"

  	ball = Ball.create(:dimples => Random.rand(1000))
  	@balls = "Created a golf ball with #{ball.dimples} dimples! - remote_ip :#{request.remote_ip} - X-Forwarded-For: #{request.env['X-Forwarded-For']} - X-Forwarded-Proto: #{request.env['X-Forwarded-Proto']} - google: #{request.env['X-ProxyUser-Ip']}"

  	@rails_stack_path = ENV['RAILS_STACK_PATH']
  end

  def show
  	@ball = Ball.first  	

  	@rails_stack_path = ENV['RAILS_STACK_PATH']
  end
end
