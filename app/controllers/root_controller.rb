class RootController < ApplicationController
  def create
    send_email
  end

  def send_email; end
end
