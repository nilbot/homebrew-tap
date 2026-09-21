# typed: false
# frozen_string_literal: true

class Agents < Formula
  desc "Development harness and standalone agent tool"
  homepage "https://github.com/nilbot/dotfiles"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.7.0/agents_v0.7.0_darwin_arm64.tar.gz"
      sha256 "2222222222222222222222222222222222222222222222222222222222222222"
    end
    on_intel do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.7.0/agents_v0.7.0_darwin_amd64.tar.gz"
      sha256 "1111111111111111111111111111111111111111111111111111111111111111"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.7.0/agents_v0.7.0_linux_arm64.tar.gz"
      sha256 "4444444444444444444444444444444444444444444444444444444444444444"
    end
    on_intel do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.7.0/agents_v0.7.0_linux_amd64.tar.gz"
      sha256 "3333333333333333333333333333333333333333333333333333333333333333"
    end
  end

  def install
    bin.install "agents"
  end

  test do
    assert_match "agents", shell_output("#{bin}/agents version")
  end
end
