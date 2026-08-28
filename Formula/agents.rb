# typed: false
# frozen_string_literal: true

class Agents < Formula
  desc "Development harness and standalone agent tool"
  homepage "https://github.com/nilbot/dotfiles"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.2.0/agents_v0.2.0_darwin_arm64.tar.gz"
      sha256 "47bc73acb77c47bf4033aadf01f18dd4ab621862b7e7452781135a7eb8266f3f"
    end
    on_intel do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.2.0/agents_v0.2.0_darwin_amd64.tar.gz"
      sha256 "16fd3695596f988f83f41a0a89adf418ebe967f66cd7200532c80fe6c909c3ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.2.0/agents_v0.2.0_linux_arm64.tar.gz"
      sha256 "54371938cf12d632a70a648cb6590de882e901720dace22504fa893675786c2c"
    end
    on_intel do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.2.0/agents_v0.2.0_linux_amd64.tar.gz"
      sha256 "008cd53f854d2252a687cf2a849ecc5cda587581099d443dc45e220206bfbeb3"
    end
  end

  def install
    bin.install "agents"
  end

  test do
    assert_match "agents", shell_output("#{bin}/agents version")
  end
end
