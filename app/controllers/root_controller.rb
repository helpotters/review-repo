class RootController < ApplicationController
  def create
    send_email
    redirect_to root_path
  end

  def send_email
    SendEmailJob.perform_now
  end
end
