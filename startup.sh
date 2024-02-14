#!/bin/sh
echo "Downloading CIFAR10 dataset"
wget -nc https://www.cs.toronto.edu/~kriz/cifar-10-python.tar.gz
tar zxf cifar-10-python.tar.gz
rm cifar-10-python.tar.gz
python main.py