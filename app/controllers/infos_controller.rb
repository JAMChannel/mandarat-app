class InfosController < ApplicationController
  before_action :require_login, only: %i[ new create ]
  def new
    # client = Slack::Web::Client.new
    # client.chat_postMessage(
    #   channel: '#test',
    #   text: 'http://localhost:3000/infos/new'
    # )
    if current_user.mandarats[0].infos.count == current_user.mandarats[1].infos.count && current_user.mandarats[0].infos.count == current_user.mandarats[7].infos.count
      @mandarats = current_user.mandarats[0]
      @info = Info.new

    elsif current_user.mandarats[1].infos.count == current_user.mandarats[2].infos.count && current_user.mandarats[1].infos.count == current_user.mandarats[7].infos.count
      # binding.pry
      @mandarats = current_user.mandarats[1]
      @info = Info.new

    elsif current_user.mandarats[2].infos.count == current_user.mandarats[3].infos.count && current_user.mandarats[2].infos.count == current_user.mandarats[7].infos.count
      # binding.pry
      @mandarats = current_user.mandarats[2]
      @info = Info.new
    elsif current_user.mandarats[3].infos.count == current_user.mandarats[4].infos.count && current_user.mandarats[3].infos.count == current_user.mandarats[7].infos.count
      # binding.pry
      @mandarats = current_user.mandarats[3]
      @info = Info.new
    elsif current_user.mandarats[4].infos.count == current_user.mandarats[5].infos.count && current_user.mandarats[4].infos.count == current_user.mandarats[7].infos.count
      # binding.pry
      @mandarats = current_user.mandarats[4]
      @info = Info.new
    elsif current_user.mandarats[5].infos.count == current_user.mandarats[6].infos.count && current_user.mandarats[5].infos.count == current_user.mandarats[7].infos.count
      # binding.pry
      @mandarats = current_user.mandarats[5]
      @info = Info.new
    elsif current_user.mandarats[6].infos.count == current_user.mandarats[7].infos.count
      # binding.pry
      @mandarats = current_user.mandarats[6]
      @info = Info.new
    else
      @mandarats = current_user.mandarats[7]
      @info = Info.new
    end
  end

  def create
    @info = Info.new(info_params)
    if @info.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
  def info_params
    params.require(:info).permit(
      :solved1, 
      :solved2, 
      :solved3, 
      :solved4, 
      :solved5, 
      :solved6, 
      :solved7, 
      :solved8, 
      :mandarat_id).merge(user_id: current_user.id)
  end

end
