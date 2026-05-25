class Omon < Formula
  include Language::Python::Virtualenv

  desc "Local-first monitoring and management tool for Ollama"
  homepage "https://github.com/LightbridgeLab/OllamaMon"
  url "https://github.com/LightbridgeLab/OllamaMon/archive/refs/tags/v0.6.3.tar.gz"
  sha256 "45661b2166d0180b596fe4f3a94b4bdeed8a8e3b4dfcc9a57b4898c3a9a940e9"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omon --version")
  end
end
