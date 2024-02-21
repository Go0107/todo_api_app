Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins '*' # 全てのオリジンを許可
      resource '*', headers: :any, methods: [:get, :post, :put, :delete] # 全てのリソース、全てのヘッダー、指定したHTTPメソッドを許可
    end
  end
  