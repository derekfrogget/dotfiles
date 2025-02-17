#! /usr/bin/env sh

one_liner=""

if command -v stow >/dev/null 2>&1; then
  one_liner="stow -t $HOME "
elif command -v xstow >/dev/null 2>&1; then
  one_liner="xstow -t $HOME "
else
  echo "You need to install stow first" >&2
  exit 1
fi

for dir in */; do
  if command -v "${dir%/}" >/dev/null 2>&1; then
    one_liner="$one_liner${dir%//} "
  fi
done

echo $one_liner
