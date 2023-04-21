class MembershipsController < ApplicationController
  def create
    membership = Membership.new(membership_params)

    if membership.save
      render json: membership, status: :created
    else
      render json: {
               error: membership.errors.full_messages.join(', '),
             },
             status: :unprocessable_entity
    end
  end

  private

  def membership_params
    params.require(:membership).permit(:client_id, :gym_id, :charge)
  end
end
