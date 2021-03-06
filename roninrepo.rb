class RoninRepo < Formula
  desc "Simple CLI tool to change a repository's default branch from master to main."
  homepage "https://github.com/trouni/roninrepo"
  url "https://github.com/trouni/roninrepo/blob/main/dist/roninrepo-0.1.tar.gz"
  sha256 "bb456339f133134d616df5936d94a8bec9a135e3dc25d7b89ead0f70cb26d620"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test roninrepo`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
