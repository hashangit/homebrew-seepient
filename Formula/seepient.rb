# Formula for Seepient Agent — CLI installed via npm.
# TODO(publish): once `seepient` is published to npm, update `url` + `sha256` to the
# seepient-x.y.z.tgz tarball and remove this comment. Until then the url points at the
# last published zoe-agent tarball so `brew install` keeps working.
class Seepient < Formula
  desc "Seepient Agent — your AI person. A skill-driven AI agent (CLI, SDK, server)"
  homepage "https://github.com/hashangit/seepient"
  url "https://registry.npmjs.org/seepient/-/seepient-0.4.1.tgz"
  sha256 "8ccf3ff00c16e621879b7828ae0eaa2d78fce84bacabb466317e7b9edf20467e"
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
