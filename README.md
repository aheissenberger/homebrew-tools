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

### pseudofy

Stable pseudonyms for names and email addresses in CSV and XLSX files. Apple Silicon Macs only.

```sh
brew install aheissenberger/tools/pseudofy
```

To update the formula for a new pseudofy release `vX.Y.Z`:

1. Set `version` and the version in the `url` field of `Formula/pseudofy.rb`.
2. Copy the SHA256 from the release asset `pseudofy-X.Y.Z-aarch64-apple-darwin.tar.gz.sha256` into the `sha256` field.
3. Run the checks:
   ```sh
   brew style Formula/pseudofy.rb
   brew audit --strict aheissenberger/tools/pseudofy
   brew install aheissenberger/tools/pseudofy
   brew test aheissenberger/tools/pseudofy
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