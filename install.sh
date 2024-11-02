sudo apt update
sudo apt install -y software-properties-common

sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update

sudo apt install -y python3.8 python3.8-dev python3-pip libomp-dev python3.8-distutils unzip
sudo rm -rf /usr/lib/python3/dist-packages/distutils-precedence.pth

sudo apt update
sudo apt install gcc-10 g++-10 -y
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-10 100
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-10 100

wget https://developer.download.nvidia.com/compute/cuda/repos/wsl-ubuntu/x86_64/cuda-wsl-ubuntu.pin
sudo mv cuda-wsl-ubuntu.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/11.8.0/local_installers/cuda-repo-wsl-ubuntu-11-8-local_11.8.0-1_amd64.deb
sudo dpkg -i cuda-repo-wsl-ubuntu-11-8-local_11.8.0-1_amd64.deb
sudo cp /var/cuda-repo-wsl-ubuntu-11-8-local/cuda-*-keyring.gpg /usr/share/keyrings/

sudo apt install zlib1g
wget https://developer.download.nvidia.com/compute/cudnn/9.5.1/local_installers/cudnn-local-repo-ubuntu2404-9.5.1_1.0-1_amd64.deb
sudo dpkg -i cudnn-local-repo-ubuntu2404-9.5.1_1.0-1_amd64.deb
sudo cp /var/cudnn-local-repo-ubuntu2404-9.5.1/cudnn-*-keyring.gpg /usr/share/keyrings/
sudo apt update
sudo apt install -y cudnn-cuda-11

sudo apt update
echo -e "Types: deb\nURIs: http://archive.ubuntu.com/ubuntu/\nSuites: lunar\nComponents: universe\nSigned-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg" | sudo tee -a /etc/apt/sources.list.d/ubuntu.sources > /dev/null
sudo apt update
sudo apt install -y libtinfo5 cuda

echo 'export PATH=/usr/local/cuda-11.8/bin:${PATH}' >> ~/.bashrc
source ~/.bashrc

sudo apt install -y nvidia-cuda-toolkit

git clone --depth=1 https://github.com/IGLICT/DeepFaceDrawing-Jittor.git
cd DeepFaceDrawing-Jittor

python3.8 -m pip install -U setuptools
python3.8 -m pip install jittor==1.2.2.09 pyqt5 Pillow==8.0.1 scipy==1.5.4 dominate==2.6.0 opencv-python

mv ./heat/bg.jpg ./heat/.jpg

cd Params
wget -O Combine.zip https://www.dropbox.com/s/5s5c4zuq6jy0cgc/Combine.zip
unzip Combine.zip && rm Combine.zip
wget -O AE_whole.zip https://www.dropbox.com/s/cs4895ci51h8xn3/AE_whole.zip
unzip AE_whole.zip && rm AE_whole.zip
