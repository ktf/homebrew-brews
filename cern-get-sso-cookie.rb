class CernGetSsoCookie < Formula
  desc "Tool to get authentication cookie from CERN SSO"
  homepage ""
  url "https://github.com/ktf/cern-get-sso-cookie.git", :using => :git
  head "https://github.com/ktf/cern-get-sso-cookie.git", :using => :git
  version "1.0"

  def install
    system "mkdir -p #{prefix}"
    system "cp -r cern-get-sso-cookie/usr/bin #{prefix}/bin"
    system "cp -r cern-get-sso-cookie/usr/share #{prefix}/share"
  end
end
