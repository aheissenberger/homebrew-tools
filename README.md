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

To update the formula for a new pseudofy release `vX.Y.Z`, start the workflow
`Update pseudofy formula` by hand:

```sh
gh workflow run update-pseudofy.yml -R aheissenberger/homebrew-tools -f version=X.Y.Z
gh run watch -R aheissenberger/homebrew-tools
```

Without `-f version=...`, the workflow uses the latest pseudofy release. It:

1. downloads the release asset and checks its SHA256 and its build attestation
   (`gh attestation verify --signer-workflow aheissenberger/pseudofy/.github/workflows/release.yml`);
2. writes the new `url` and `sha256` into `Formula/pseudofy.rb`;
3. runs `brew style`, `brew audit --strict`, `brew install`, and `brew test` on macOS;
4. pushes the commit `pseudofy X.Y.Z` to `main` only if all checks pass.

To update the formula by hand:

1. Set the new version in the `url` field of `Formula/pseudofy.rb`. Homebrew reads the version from the URL.
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