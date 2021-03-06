defmodule SpandexPhoenix.MixProject do
  use Mix.Project

  def project do
    [
      app: :spandex_phoenix,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      package: package(),
      description: description(),
      docs: docs(),
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    [
      name: :spandex_phoenix,
      maintainers: ["Zachary Daniel", "Greg Mefford"],
      licenses: ["MIT License"],
      links: %{"GitHub" => "https://github.com/spandex-project/spandex_phoenix"}
    ]
  end

  defp description() do
    """
    Tools for integrating Phoenix with Spandex.
    """
  end

  defp docs do
    [
      main: "readme",
      extras: [
        "README.md"
      ]
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:phoenix, "~> 1.0"},
      {:spandex, "~> 2.0"}
    ]
  end
end
