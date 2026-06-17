class ZoeAgent < Formula
  desc "Zoe — your AI person. A skill-driven AI agent (CLI, SDK, server)"
  homepage "https://github.com/hashangit/zoe"
  url "https://registry.npmjs.org/zoe-agent/-/zoe-agent-0.3.2.tgz"
  sha256 "605157c758ef56e130bc1c3a73d0b5f35c2c4b8f9ea2ea56e4bcb6a7fe98cb64"
  license "BUSL-1.1"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match(/\d+\.\d+\.\d+/, shell_output("#{bin}/zoe --version"))
  end
end
