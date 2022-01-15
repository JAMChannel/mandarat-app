class TargetsController < ApplicationController
  def index
    @mandarat = current_user.mandarats
    @targets = @mandarat[0].infos
    # @infos = :solved1..:solved8
    # @infos.map { |c| @targets.send(c) }.sum
    # binding.pry
    @item = []
    @targets.each do |target|
      # @item << target.where(solved1: true)
    end
    # binding.pry

  end

  def new; end

  def show; end

  def edht; end

  def create
    @target = Form::TargetCollection.new(target_params)
    if @target.save
      redirect_to mandarats_path
    else
      render 'new'
    end
  end

  private

  def target_params
    # params.require(:form_mandarat_collection).permit(mandarats_attributes: Form::Mandarat::REGISTRABLE_ATTRIBUTES).merge(user_id: current_user.id)
    params.require(:form_target_collection).permit(targets_attributes: %i[name user_id mandarat_id])
  end
end
