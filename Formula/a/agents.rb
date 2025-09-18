class Agents < Formula
  desc "CLI tool to manage ElevenLabs agents"
  homepage "https://github.com/elevenlabs/packages/tree/main/packages/agents-cli"
  url "https://registry.npmjs.org/@elevenlabs/agents-cli/-/agents-cli-0.3.2.tgz"
  sha256 "dd7369b50de272c221858713fcd958b572304c29bb5e62522843ec0d73d0d7e9"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "agents", shell_output("#{bin}/agents --help")
  end
end
