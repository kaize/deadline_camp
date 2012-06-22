class MemberObserver < ActiveRecord::Observer

  def after_accept(vehicle, transition)
    MemberMailer.approved(vehicle).deliver
  end

end
