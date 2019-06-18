class Flutter < Formula
  desc "The Flutter SDK (Unofficial Homebrew Formula)"
  homepage "https://flutter.dev"

  stable do
    url "https://github.com/flutter/flutter.git", :branch => "stable"
    version "stable"
  end

  def install
    bin.install "flutter"
  end

end
