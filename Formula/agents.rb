# typed: false
# frozen_string_literal: true

class Agents < Formula
  desc "Development harness and standalone agent tool"
  homepage "https://github.com/nilbot/dotfiles"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.4.0/agents_v0.4.0_darwin_arm64.tar.gz"
      sha256 "70a38e1e36341c0a645c772e327203770dc290269df6451d792ca22afc02a0ac"
    end
    on_intel do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.4.0/agents_v0.4.0_darwin_amd64.tar.gz"
      sha256 "a21a3df2b6a83031d4e7f1dd57b552631afdfa091483f6d50cd6c703c901cb60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.4.0/agents_v0.4.0_linux_arm64.tar.gz"
      sha256 "49a647572167279ede64419b0e273bbf93fb8db33ee0d0d0b476c7408e9802ee"
    end
    on_intel do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.4.0/agents_v0.4.0_linux_amd64.tar.gz"
      sha256 "5ac9c733602d69031a03b41b7e3e189fc0cc30bd6ed52f8cd4bd2ba02f424e6c"
    end
  end

  def install
    bin.install "agents"
  end

  test do
    assert_match "agents", shell_output("#{bin}/agents version")
  end
end
