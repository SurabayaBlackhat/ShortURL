class CustomExceptions < ActionDispatch::PublicExceptions
  def call(env)
    status = env['PATH_INFO'][1..-1]

    if status == 404
      Rails.application.routes.call(env)
    else
      super
    end

    if status == 422
      Rails.application.routes.call(env)
    else
      super
    end

    if status == 500
      Rails.application.routes.call(env)
    else
      super
    end
  end
end