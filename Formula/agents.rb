# typed: false
# frozen_string_literal: true

class Agents < Formula
  desc "Development harness and standalone agent tool"
  homepage "https://github.com/nilbot/dotfiles"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.8.0/agents_v0.8.0_darwin_arm64.tar.gz"
      sha256 "deb59f3c1b06c34ff2158fe85b90a81281ef8bc52b00dd82d703171c15ac8ee3"
    end
    on_intel do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.8.0/agents_v0.8.0_darwin_amd64.tar.gz"
      sha256 "2e1019e94d214ef5067a84bb3238d04fa4417f4d2a7314a476c9a49af1604f94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.8.0/agents_v0.8.0_linux_arm64.tar.gz"
      sha256 "d533702324eac88bde264fd8aea791bd40bf9d2a10eb85df81ad973fde554e00"
    end
    on_intel do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.8.0/agents_v0.8.0_linux_amd64.tar.gz"
      sha256 "4389013b862b291b2748162632b2990bb8706c77dc79b03a1ac858a284f7fd69"
    end
  end

  def install
    bin.install "agents"
  end

  test do
    assert_match "agents", shell_output("#{bin}/agents version")
  end
end
