#!/bin/bash


mapfile -t versions < <(
  update-alternatives --list java 2>/dev/null |
  awk -F/ '
{
    split($5, parts, "-")
    version = parts[2]
    print version
}' |
  sort -nu
)

if (( ${#versions[@]} == 0 )); then
  echo "No Java versions found."
  exit 0
fi

packages=()

for version in "${versions[@]}"; do
  while IFS= read -r package; do
    packages+=("$package")
  done < <(
    dpkg-query -W -f='${binary:Package}\n' "openjdk-${version}-*" 2>/dev/null
  )
done

if (( ${#packages[@]} == 0 )); then
  echo "No matching OpenJDK packages found."
  exit 0
fi

mapfile -t packages < <(
  printf '%s\n' "${packages[@]}" | sort -u
)

echo
echo "The following Java versions were found:"
printf ' - Java %s\n' "${versions[@]}"

echo
echo "The following packages will be removed:"
printf ' - %s\n' "${packages[@]}"

echo
printf "Continue with uninstall? [y/N] "
read -r answer
echo "Answer was: '$answer'"

if [[ ! "$answer" =~ ^[Yy]$ ]]; then
  echo "Cancelled."
  exit 0
fi

sudo apt purge -y "${packages[@]}"
sudo apt autoremove --purge -y

echo
echo "Java uninstall complete."
