#!/bin/bash


installed=$(update-alternatives --list java 2>/dev/null)

if [[ -z $installed ]]; then
    echo "Java not installed. Installing..."
    sudo apt install openjdk-25-jdk -y
else
    echo "Java already installed"
fi

mapfile -t versions < <(
  update-alternatives --list java |
  awk -F/ '
{
    split($5, parts, "-")
    version = parts[2]
    print version
}' |
  sort -nu
)

old_versions=()
new_versions=()

for v in "${versions[@]}"; do
    if (( v < 11 )); then
        old_versions+=("$v")
    else
        new_versions+=("$v")
    fi
done

if (( ${#versions[@]} > 0 )); then
    echo "The following old versions of Java are installed: ${old_versions[@]}"
    echo "The following new versions of Java are installed: ${new_versions[@]}"
fi
