class Omon < Formula
  include Language::Python::Virtualenv

  desc "Local-first monitoring and management tool for Ollama"
  homepage "https://github.com/LightbridgeLab/OllamaMon"
  url "https://github.com/LightbridgeLab/OllamaMon/archive/refs/tags/v0.6.5.tar.gz"
  sha256 "dfa9eb97c9b678e65e73c03e3e00e4c3c4e74a57576dceda7ae2d9b82757d17e"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omon --version")
  end
end
