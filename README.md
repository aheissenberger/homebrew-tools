# homebrew-tools

A personal Homebrew tap with tools not available in core.

## Install

```sh
brew tap aheissenberger/tools
```

### tackler

Fast bookkeeping engine with native Git SCM support for plain text accounting.

```sh
brew install aheissenberger/tools/tackler
```

## Updating a formula version

1. Update `version` and the tag in the `url` field of the formula file.
2. Recompute the source tarball checksum:
   ```sh
   curl -L https://github.com/tackler-ng/tackler/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256
   ```
3. Paste the new SHA256 into the `sha256` field.
4. Run style and audit checks:
   ```sh
   brew style Formula/tackler.rb
   brew audit --strict aheissenberger/tools/tackler
   ```
5. Test the install:
   ```sh
   brew install --build-from-source aheissenberger/tools/tackler
   brew test aheissenberger/tools/tackler
   ```