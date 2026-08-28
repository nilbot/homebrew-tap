# typed: false
# frozen_string_literal: true

class Agents < Formula
  desc "Development harness and standalone agent tool"
  homepage "https://github.com/nilbot/dotfiles"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.2.1/agents_v0.2.1_darwin_arm64.tar.gz"
      sha256 "5a6fe0de3c5cce0bae033078b8d7e57b3ab1f8e62c893102210c9dde5b96f1dc"
    end
    on_intel do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.2.1/agents_v0.2.1_darwin_amd64.tar.gz"
      sha256 "183e4ce50a166e163252ebd6f08fda5a4454ffc5427c97d0a229731ae18b66e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.2.1/agents_v0.2.1_linux_arm64.tar.gz"
      sha256 "178bcd1a3867c916c753fc620373c165e5e4fde514d27bb5e7ef155c6c28dcf5"
    end
    on_intel do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.2.1/agents_v0.2.1_linux_amd64.tar.gz"
      sha256 "cbee06d35cee04efca572d91375f143761bc5f34b8d197db23f1999c4e9c0826"
    end
  end

  def install
    bin.install "agents"
  end

  test do
    assert_match "agents", shell_output("#{bin}/agents version")
  end
end
