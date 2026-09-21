# typed: false
# frozen_string_literal: true

class Agents < Formula
  desc "Development harness and standalone agent tool"
  homepage "https://github.com/nilbot/dotfiles"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.7.0/agents_v0.7.0_darwin_arm64.tar.gz"
      sha256 "8d2e022fae86990af09db4b43ed0eb3082c706c60553600e6eeb666e8d396319"
    end
    on_intel do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.7.0/agents_v0.7.0_darwin_amd64.tar.gz"
      sha256 "d235be585abd19e9b7a59da5aea56a40a32afd0081ee1c81665ec719208f0041"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.7.0/agents_v0.7.0_linux_arm64.tar.gz"
      sha256 "fa878a2c1dce0e92fbeeaa8eb293f9bd9e7d90b03b873e3834d489ce676371a7"
    end
    on_intel do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.7.0/agents_v0.7.0_linux_amd64.tar.gz"
      sha256 "7d02a94563ae05bcf95c61eea633823110968f6ed0cbc6a8f064fe750bcea8b0"
    end
  end

  def install
    bin.install "agents"
  end

  test do
    assert_match "agents", shell_output("#{bin}/agents version")
  end
end
