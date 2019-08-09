defmodule Sample.Gettext do
  @otp_app Mix.Project.config()[:app]
  use Gettext, otp_app: @otp_app
end
