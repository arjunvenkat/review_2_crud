class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def show
    id = params[:id].to_i
    @message = Message.find_by_id(id)
  end

  def new

  end

  def create
    m = Message.new
    m.name = params[:name]
    m.contact = params[:contact]
    m.description = params[:description]
    m.save

    redirect_to "http://localhost:3000/messages"
  end

  def edit
    id = params[:id].to_i
    @message = Message.find_by_id(id)
  end

  def update
    m = Message.find_by_id(params[:id].to_i)
    m.name = params[:name]
    m.contact = params[:contact]
    m.description = params[:description]
    m.save

    redirect_to "http://localhost:3000/messages/#{m.id}"
  end
end








