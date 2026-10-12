# typed: false
# frozen_string_literal: true

class Agents < Formula
  desc "Development harness and standalone agent tool"
  homepage "https://github.com/nilbot/dotfiles"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.8.1/agents_v0.8.1_darwin_arm64.tar.gz"
      sha256 "701d75eda5ff9b73de740c4d82fd48b87089168c64ec2b018da588879a9af564"
    end
    on_intel do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.8.1/agents_v0.8.1_darwin_amd64.tar.gz"
      sha256 "467853010133d5dca871a228243ba13121c7ef089e522718f45dbbc7c446d8f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.8.1/agents_v0.8.1_linux_arm64.tar.gz"
      sha256 "dd5f7acdba85efe88f5acee6d639092debdec80d38298144416d4d769d5cc49a"
    end
    on_intel do
      url "https://github.com/nilbot/dotfiles/releases/download/v0.8.1/agents_v0.8.1_linux_amd64.tar.gz"
      sha256 "8f9a1d35c47cb315e3768f20fd0535d8fdee8e7a423977ee71519e0d665f8ac6"
    end
  end

  def install
    bin.install "agents"
  end

  test do
    assert_match "agents", shell_output("#{bin}/agents version")
  end
end
