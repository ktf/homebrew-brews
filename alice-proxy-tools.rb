require_relative "lib/custom_download_strategy"

class AliceProxyTools < Formula
  desc "Tool to setup ALICE SOCKS proxies"
  homepage ""
  url "https://github.com/ktf/alice-proxy-tools.git", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  head "https://github.com/ktf/alice-proxy-tools.git", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "1.0"

  def install
    system "mkdir -p #{prefix}/bin"
    system "cp -r alice-proxy-tools/alice-setup-proxy #{prefix}/bin"
    system "cp -r alice-proxy-tools/alice-dispose-proxy #{prefix}/bin"
  end
end
