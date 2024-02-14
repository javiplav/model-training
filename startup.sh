#!/bin/sh
echo "Downloading CIFAR10 dataset"
wget -nc https://www.cs.toronto.edu/~kriz/cifar-10-python.tar.gz
wait
echo "Download complete!"
tar zxf cifar-10-python.tar.gz
rm cifar-10-python.tar.gz
python main.py