class Flutter < Formula
  require 'json'
  desc "The Flutter SDK (Unofficial Homebrew Formula)"
  homepage "https://flutter.dev"

  stable do
    url "https://github.com/flutter/flutter.git", :branch => "stable"
    version "stable"
  end

  bottle :unneeded

  def install
    system "./bin/flutter"
    allfiles = File.join(buildpath, "**", "{*,.*}")
    mv Dir.glob(allfiles), Dir.glob(prefix), :force => true
  end

  def post_install
    rm File.join(HOMEBREW_PREFIX, "bin", "flutter.bat")
    chmod_R "+rwx", File.join(prefix, "bin")
  end

end
