# goobernix &nbsp; [![bluebuild build badge](https://github.com/sylvie00/goobernix/actions/workflows/build.yml/badge.svg)](https://github.com/sylvie00/goobernix/actions/workflows/build.yml)

Custom Bazzite image created for my friend moving to Linux, I don't recommend using this over regular Bazzite unless you're them lol.

This image includes Kvantum and the Expose theme.

## Installation

> [!WARNING]  
> [This is an experimental feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/computer-cat/goobernix:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/computer-cat/goobernix:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```


## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/computer-cat/goobernix
```
