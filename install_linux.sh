if [ -z "$1" ]; then
  echo "Please supply KiCad version that needs to be installed"
  exit 1
fi

sudo add-apt-repository ppa:kicad/kicad-$1-releases
sudo apt update
sudo apt install kicad