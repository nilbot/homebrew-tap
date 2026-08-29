# typed: false
# frozen_string_literal: true

class Agents < Formula
  desc "Development harness and standalone agent tool"
  homepage "https://github.com/nilbot/dotfiles"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.3.0/agents_v0.3.0_darwin_arm64.tar.gz"
      sha256 "c03da6896d39ea08c2ef3888c78d55783d78ca311445da571379eb8b66266ace"
    end
    on_intel do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.3.0/agents_v0.3.0_darwin_amd64.tar.gz"
      sha256 "bab753d671f4e9c13b08306d356dc5f98611d8769f74fd49d86c1e22d1e0c398"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.3.0/agents_v0.3.0_linux_arm64.tar.gz"
      sha256 "dbf8e8cf82dd35a9fcf0ff456142b9cb91eb7063f741eb1a95b30620041f44d9"
    end
    on_intel do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.3.0/agents_v0.3.0_linux_amd64.tar.gz"
      sha256 "c5909215ca07238f8b37b8b0f32e9f6de6aa1a140cd2082bd36d73f4519266eb"
    end
  end

  def install
    bin.install "agents"
  end

  test do
    assert_match "agents", shell_output("#{bin}/agents version")
  end
end
