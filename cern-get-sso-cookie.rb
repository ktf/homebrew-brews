class GetCERNSSOCookie < Formula
  desc "Tool to get authentication cookie from CERN SSO"
  homepage ""
  head "https://github.com/ktf/cern-get-sso-cookie.git", :using => :git

  def install
    system "cp -r usr/bin", "#{prefix}/bin"
    system "cp -r usr/share", "#{prefix}/share"
  end
end
