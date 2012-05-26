Configus.build Rails.env do
  env :production do
  end

  env :staging, :parent => :production do
    basic_auth do
      username 'dc'
      password 'qwe'
    end
  end

  env :development, :parent => :production
  env :test, :parent => :development
end
