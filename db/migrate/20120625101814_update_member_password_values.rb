class UpdateMemberPasswordValues < ActiveRecord::Migration
  def up
    Member.find_each do |m|
      begin
        BCrypt::Password.new(m.password_digest)
      rescue BCrypt::Errors::InvalidHash
        m.password = SecureApp.generate_password
        m.save!
        puts "Member ##{m.id} changes password"
      end
    end
  end

  def down
  end
end
