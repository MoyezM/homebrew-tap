# Rendered into MoyezM/homebrew-tap:Formula/gitter.rb by scripts/release/update-tap.sh.
# Edit this template, not the tap copy — every release overwrites it.
class Gitter < Formula
  desc "Git TUI for staging, review, and stacked branches"
  homepage "https://github.com/MoyezM/gitter"
  version "0.0.3"

  # Binary-only: gitter needs a custom OxCaml compiler plus preview packages,
  # so users can never build from source. No bottle block — these tarballs
  # already are the prebuilt artifacts.
  on_macos do
    on_arm do
      url "https://github.com/MoyezM/gitter/releases/download/v0.0.3/gitter-v0.0.3-macos-arm64.tar.gz"
      sha256 "1a51e008d450089a75736ccf209139cfe75087089806801789a8f4f652ce5a75"
    end

    # No Intel artifact exists yet. When gitter-v0.0.3-macos-x86_64.tar.gz
    # ships, uncomment and teach update-tap.sh a @SHA_X86_64@ placeholder.
    # on_intel do
    #   url "https://github.com/MoyezM/gitter/releases/download/v0.0.3/gitter-v0.0.3-macos-x86_64.tar.gz"
    #   sha256 "@SHA_X86_64@"
    # end
  end

  def install
    bin.install "gitter"
  end

  test do
    assert_match "0.0.3", shell_output("#{bin}/gitter -version")
  end
end
