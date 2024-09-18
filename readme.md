

bw config server my-self-hosted.bitwarden.com

bw login

bw unlock


export GITHUB_USERNAME=frleb

sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
