class MemberObserver < ActiveRecord::Observer

  def after_accept(vehicle, transition)
    member = MemberDecorator.new vehicle
    MemberMailer.approved(member).deliver
  end

end
