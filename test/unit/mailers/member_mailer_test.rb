require 'test_helper'

class MemberMailerTest < ActionMailer::TestCase
  def setup
    member = create :member
    @member = MemberDecorator.new member
  end

  def test_welcome_email
    email = MemberMailer.welcome(@member).deliver
    assert !ActionMailer::Base.deliveries.empty?
    assert_equal [@member.email], email.to
    assert_equal I18n.t('member_mailer.welcome.subject'), email.subject
  end

  def test_approved_email
    email = MemberMailer.approved(@member).deliver
    assert !ActionMailer::Base.deliveries.empty?
    assert_equal [@member.email], email.to
    assert_equal I18n.t('member_mailer.approved.subject'), email.subject
  end

  def test_remind_password_email
    email = MemberMailer.remind_password(@member).deliver
    assert !ActionMailer::Base.deliveries.empty?
    assert_equal [@member.email], email.to
    assert_equal I18n.t('member_mailer.remind_password.subject'), email.subject
  end
end
