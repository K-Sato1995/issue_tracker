if Rails.env.development? || Rails.env.backstage?
  GraphiQL::Rails.config.headers['session'] = User.first.name
end
