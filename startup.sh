#!/bin/sh
echo "Downloading CIFAR10 dataset"
apt-get update > /dev/null 2>&1 && apt-get install wget -y > /dev/null 2>&1
wait $!
# Next commands using wget will run here
echo "wget installation complete!"
if ! command -v wget &> /dev/null; then
  echo "Error: wget not found. Please install it."
  exit 1
fi
wget -nc https://www.cs.toronto.edu/~kriz/cifar-10-python.tar.gz
wait
echo "Download complete!"
tar zxf cifar-10-python.tar.gz
rm cifar-10-python.tar.gzc
python main.py
