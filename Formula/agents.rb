# typed: false
# frozen_string_literal: true

class Agents < Formula
  desc "Development harness and standalone agent tool"
  homepage "https://github.com/nilbot/dotfiles"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.5.1/agents_v0.5.1_darwin_arm64.tar.gz"
      sha256 "9cbe582ca8f5a99b9cc7ae3b939d324aafe8a7cfa8d2d2da55ead5e107873b2e"
    end
    on_intel do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.5.1/agents_v0.5.1_darwin_amd64.tar.gz"
      sha256 "ccc9b88b92122daadedf81a2735ddc8cc92b8fd8cafce9b1bd0c0daac6dca9d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.5.1/agents_v0.5.1_linux_arm64.tar.gz"
      sha256 "8d821ca9d719ed214e6922fc8289ab6c344d7d37969049802e29d4af78a2fa08"
    end
    on_intel do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.5.1/agents_v0.5.1_linux_amd64.tar.gz"
      sha256 "8923149657636a385c880e9c1ce28154f90d738b4c9a2c3e04628c88be16f366"
    end
  end

  def install
    bin.install "agents"
  end

  test do
    assert_match "agents", shell_output("#{bin}/agents version")
  end
end
