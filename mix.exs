defmodule Protego.Mixfile do
  use Mix.Project

  @version "0.1.0"

  def project do
    [app: :protego,
     version: @version,
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     compilers: [:phoenix, :gettext] ++ Mix.compilers,
     deps: deps,
     package: package,
     name: "Protego",
     homepage_url: "http://www.pluseg.com",
     description: """
     Flexible authentication solution for Elixir/Phoenix with Guardian.
     """
   ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
        [applications: [:phoenix, :comeonin, :gettext]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      # Docs dependencies
      {:earmark, "~> 0.1", only: :docs},
      {:ex_doc, "~> 0.11", only: :docs},
 
      {:phoenix, "~> 1.2-rc"},
      {:gettext, "~> 0.8"},
      {:inflex, "~> 1.5.0"},
      {:phoenix_html, "~> 2.5"},

      {:comeonin, "~> 2.0.0"},
      {:guardian, "~> 0.12.0"},
    ]
  end

  defp package do
    [maintainers: ["Peter Shoukry"],
     licenses: ["MIT"],
     links: %{github: "https://github.com/plus-eg/protego"}]
  end
end
