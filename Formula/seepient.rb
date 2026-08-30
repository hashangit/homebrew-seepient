# Formula for Seepient Agent — CLI installed via npm.
# TODO(publish): once `seepient` is published to npm, update `url` + `sha256` to the
# seepient-x.y.z.tgz tarball and remove this comment. Until then the url points at the
# last published zoe-agent tarball so `brew install` keeps working.
class Seepient < Formula
  desc "Seepient Agent — your AI person. A skill-driven AI agent (CLI, SDK, server)"
  homepage "https://github.com/hashangit/seepient"
  url "https://registry.npmjs.org/seepient/-/seepient-0.5.7.tgz"
  sha256 "97eb2a2f96a88d1ac7d381734cc9131e4dc9a62ce2eaaaabf96095c9fdc6432f"
  license "BUSL-1.1"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match(/\d+\.\d+\.\d+/, shell_output("#{bin}/seepient --version"))
  end
end
