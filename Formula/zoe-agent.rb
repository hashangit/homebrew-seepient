class ZoeAgent < Formula
  desc "Zoe — your AI person. A skill-driven AI agent (CLI, SDK, server)"
  homepage "https://github.com/hashangit/zoe"
  url "https://registry.npmjs.org/zoe-agent/-/zoe-agent-0.3.0.tgz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "BUSL-1.1"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "zoe", shell_output("#{bin}/zoe --version")
  end
end
