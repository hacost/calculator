defmodule Calculator.MixProject do
  use Mix.Project

  def project do
    [
      app: :calculator,
      description: description(),
      version: "0.0.1",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      package: package(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:ex_doc, "~> 0.18", only: :dev}
    ]
  end

  defp description do
    """
    library to add, subtract, multiply and divide 2 numbers.
    """
  end

  defp package do
    [
      maintainers: ["Héctor Acosta"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/hacost/calculator.git"}
    ]
  end
end
