# typed: false
# frozen_string_literal: true

class Agents < Formula
  desc "Development harness and standalone agent tool"
  homepage "https://github.com/nilbot/dotfiles"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.6.0/agents_v0.6.0_darwin_arm64.tar.gz"
      sha256 "30a267e3df82c1be6ac4c8f0888013468b771607795c6824a35b9a8ffecdade3"
    end
    on_intel do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.6.0/agents_v0.6.0_darwin_amd64.tar.gz"
      sha256 "71a837b366c2f09e2969ad8e2acf5502ac0897d4125b00334edff6440657e92a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.6.0/agents_v0.6.0_linux_arm64.tar.gz"
      sha256 "97db79514e19e8427ba9abd39d7b032bef5bd41d8ad0eaea2d36d2a8e938ee92"
    end
    on_intel do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.6.0/agents_v0.6.0_linux_amd64.tar.gz"
      sha256 "c9aa20bcb947c6c436e6c604ce0067529e897f6a50b581c19f9ac6c970e15248"
    end
  end

  def install
    bin.install "agents"
  end

  test do
    assert_match "agents", shell_output("#{bin}/agents version")
  end
end
