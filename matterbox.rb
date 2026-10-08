class Matterbox < Formula
  desc "Fast terminal client for Mattermost"
  homepage "https://github.com/ktf/matterbox"
  license "GPL-3.0-or-later"
  head "https://github.com/ktf/matterbox.git", branch: "main"

  depends_on "go" => :build
  depends_on "pkgconf" => :build
  # go-astiav v0.43 binds the ffmpeg 9 API.
  depends_on "ffmpeg"

  on_linux do
    depends_on "alsa-lib"
  end

  def install
    ENV["CGO_ENABLED"] = "1"
    ldflags = "-s -w -X matterbox/internal/cli.version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags, tags: "demoaudio,video")
    generate_completions_from_executable(bin/"matterbox", "completion")
  end

  test do
    output = shell_output("#{bin}/matterbox --version")
    assert_match version.to_s, output
    assert_match "video", output
  end
end
