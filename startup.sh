#!/bin/sh
echo "Downloading CIFAR10 dataset"
apt-get update > /dev/null 2>&1 && apt-get install wget -y > /dev/null 2>&1
wait $!
# Next commands using wget will run here
echo "wget installation complete!"
wget -nc https://www.cs.toronto.edu/~kriz/cifar-10-python.tar.gz
wait
echo "Download complete!"
tar zxf cifar-10-python.tar.gz
wait
rm cifar-10-python.tar.gzc
wait
python main.py
