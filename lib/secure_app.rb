module SecureApp
  class << self
    def generate_token
      SecureRandom.base64(15).tr('+/=lIO0', 'a-z')
    end

    def generate_password
      SecureRandom.base64(15)
    end
  end
end
