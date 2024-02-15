#!/bin/sh
for arg in "$@"; do
  case "$arg" in
    --repository_url=*)
      repository_url="${arg#*=}"
      ;;
    --commit_id=*)
      commit_id="${arg#*=}"
      ;;
  esac
done
echo "Using $repository_url and $commit_id"
echo "Downloading CIFAR10 dataset"
apt-get update > /dev/null 2>&1 && apt-get install wget -y > /dev/null 2>&1 && apt-get install git -y > /dev/null 2>&1
wait $!
# Next commands using wget will run here
echo "wget installation complete!"
wget -nc https://www.cs.toronto.edu/~kriz/cifar-10-python.tar.gz
wait $!
echo "Download complete!"
tar zxf cifar-10-python.tar.gz
wait $!
rm cifar-10-python.tar.gz
wait $!
git clone --branch "$commit_id" "$repository_url"
wait $!
echo "Successfully cloned repository to ./$repository_name at commit $commit_id"
python /workspace/model-training.git/main.py
