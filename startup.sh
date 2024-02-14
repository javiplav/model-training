#!/bin/sh
echo "Downloading CIFAR10 dataset"
sudo apt-get install wget
wait
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
