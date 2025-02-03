# Need to install CUDA and Nvidia driver before install ZED SDK



# Install CUDA Toolkit 12.8
- https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=24.04&target_type=deb_local


# Install Nvidia driver
- Disable Secure Boot in BIOS
- Go to https://www.nvidia.com/en-us/drivers/ to search for correct driver version

``` shell
sudo apt-get remove --purge '^nvidia-.*'
sudo apt autoremove
sudo apt install --reinstall nvidia-driver-550
sudo nvidia-settings
sudo prime-select nvidia
reboot
```

# Install ZED SDK
- https://www.stereolabs.com/docs/installation/linux

``` shell
sudo apt install zstd
chmod +x ZED_SDK_Ubuntu22_cuda11.8_v4.0.0.zstd.run
./ZED_SDK_Ubuntu22_cuda11.8_v4.0.0.zstd.run
```

# Install ZED Python API
- https://www.stereolabs.com/docs/app-development/python/install

``` shell
python -m pip install cython numpy opencv-python pyopengl
cd "/usr/local/zed/"
python3 get_python_api.py

# To install it later or on a different environment run : 
python -m pip install --ignore-installed /usr/local/zed/pyzed-4.2-cp310-cp310-linux_x86_64.whl
```


# Troubleshoot /usr/local/zed/tools/ZED_Diagnostic

