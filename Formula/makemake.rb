class Makemake < Formula
  include Language::Python::Virtualenv

  desc "Make make!"
  homepage "https://github.com/drewmalin/makemake"
  url "https://github.com/drewmalin/makemake/releases/download/0.0.1/makemake-0.0.1.tar.gz"
  sha256 "4f6c96b9f29fc2b2359dcb6bd3fe51bb0c1ed766a2cdff523bff9c01694c269a"

  depends_on "python@3.x"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/makemake", "-h"
  end
end

