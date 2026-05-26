class Omon < Formula
  include Language::Python::Virtualenv

  desc "Local-first monitoring and management tool for Ollama"
  homepage "https://github.com/LightbridgeLab/OllamaMon"
  url "https://github.com/LightbridgeLab/OllamaMon/archive/refs/tags/v0.6.6.tar.gz"
  sha256 "3c4ef838d2c20ae6815279a9a2e5c29cb643823134347766c802107a672d2444"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omon --version")
  end
end
