# typed: false
# frozen_string_literal: true

class Agents < Formula
  desc "Development harness and standalone agent tool"
  homepage "https://github.com/nilbot/dotfiles"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.5.0/agents_v0.5.0_darwin_arm64.tar.gz"
      sha256 "dd59bf1e2cd8da0bc446bb6b8eb8c11bb529c5fcee91f3794397f0a5407a79d4"
    end
    on_intel do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.5.0/agents_v0.5.0_darwin_amd64.tar.gz"
      sha256 "22b8cadd9104c3b5fda3e10716895003113b51ea565361a4e36f63730a99f725"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.5.0/agents_v0.5.0_linux_arm64.tar.gz"
      sha256 "fcf07aa8f80cebf6f24b02b280652576f0592dd31bb5b65eaaa3a60f5b801c62"
    end
    on_intel do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.5.0/agents_v0.5.0_linux_amd64.tar.gz"
      sha256 "fc6335ef347bd30be9a20054b15e8c6bf3af20ab570d3c81b232679909e83a73"
    end
  end

  def install
    bin.install "agents"
  end

  test do
    assert_match "agents", shell_output("#{bin}/agents version")
  end
end
