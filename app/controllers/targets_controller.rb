class TargetsController < ApplicationController
  def index
  end

  def new
  end

  def show
  end

  def edht
  end

  def create
    @target = Form::TargetCollection.new(target_params)
    if @target.save
      redirect_to mandarats_path
    else
      render "new"
    end
  end
  private

  def target_params
    # params.require(:form_mandarat_collection).permit(mandarats_attributes: Form::Mandarat::REGISTRABLE_ATTRIBUTES).merge(user_id: current_user.id)
    params.require(:form_target_collection).permit(targets_attributes: [:name, :user_id, :mandarat_id])
  end

end
