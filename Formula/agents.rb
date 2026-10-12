# typed: false
# frozen_string_literal: true

class Agents < Formula
  desc "Development harness and standalone agent tool"
  homepage "https://github.com/nilbot/dotfiles"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.9.0/agents_v0.9.0_darwin_arm64.tar.gz"
      sha256 "d44730142c9dbd8fef89b81e980f658cc5d29243abb93d05e6ce57e296f85adc"
    end
    on_intel do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.9.0/agents_v0.9.0_darwin_amd64.tar.gz"
      sha256 "9a947fb58cbdcb8f0535f5fd04162c1ce530f12bb5b1ee7132c7c527b51572be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.9.0/agents_v0.9.0_linux_arm64.tar.gz"
      sha256 "bfacdcaa146f8c318ed52661b50fa680713ff386837328b1e6008301fb204073"
    end
    on_intel do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.9.0/agents_v0.9.0_linux_amd64.tar.gz"
      sha256 "5ee3564b7aa2c424655649e35f29ed9dcd6c7961b71dd60ea7c86fccb3992ad2"
    end
  end

  def install
    bin.install "agents"
  end

  test do
    assert_match "agents", shell_output("#{bin}/agents version")
  end
end
