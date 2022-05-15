require_relative "lib/custom_download_strategy"

class AliceProxyTools < Formula
  desc "Tool to setup ALICE SOCKS proxies"
  homepage ""
  url "https://github.com/ktf/alice-proxy-tools", :using => :github_private_repo
  head "https://github.com/ktf/alice-proxy-tools/tarball/master", :using => :github_private_repo
  version "1.0"

  def install
    system "mkdir -p #{prefix}/bin"
    system "cp -r alice-setup-proxy #{prefix}/bin"
    system "cp -r alice-dispose-proxy #{prefix}/bin"
  end
end
