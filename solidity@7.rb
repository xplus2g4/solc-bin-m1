class SolidityAT7 < Formula
  desc "The Solidity Contract-Oriented Programming Language"
  homepage "https://docs.soliditylang.org"
  url "https://github.com/xplus2g4/solc-bin-m1/raw/main/solidity_0.7.6.tar.gz"
  version "0.7.6"
  sha256 "caa8a00dd82f4862faa2c4282da7c4a35f3c3ab59ea1377f06ac5900b0035e8c"

  depends_on "cmake" => :build
  depends_on "boost" => "c++11"
  # Note: due to a homebrew limitation, ccache will always be detected and cannot be turned off.
  depends_on "ccache" => :build
  depends_on "z3"

  def install
    system "cmake", ".", *std_cmake_args, "-DTESTS=OFF"
    system "make", "install"
  end

  test do
    system "#{bin}/solc", "--version"
  end
end