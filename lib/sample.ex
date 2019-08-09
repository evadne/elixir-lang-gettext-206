defmodule Sample do
  def hello do
    message = "%{count} item(s)"
    Gettext.ngettext(__MODULE__.Gettext, message, message, 1)
  end
end
