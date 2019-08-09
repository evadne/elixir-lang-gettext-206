defmodule Sample.MixProject do
  use Mix.Project

  def project do
    [
      app: :sample,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      compilers: [:gettext] ++ Mix.compilers(),
      deps: deps(),
      dialyzer: dialyzer()
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp dialyzer do
    [
      plt_add_apps: [:mix],
      flags: ~w(error_handling no_opaque race_conditions underspecs unmatched_returns)a,
      list_unused_filters: true
    ]
  end

  defp deps do
    [
      {:dialyxir, "~> 1.0.0-rc.3", only: [:dev, :test], runtime: false},
      {:gettext, "~> 0.17"}
    ]
  end
end
