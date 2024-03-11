# Cloning vendor repositories
git clone --depth=1 https://github.com/CuriousNom/android_vendor_samsung_gta4l.git vendor/samsung/gta4l

# Cloning necessary repository
git clone --depth=1 https://github.com/Matrixx-Devices/android_hardware_samsung hardware/tmp
cp -r hardware/tmp/* hardware/samsung/
rm -rf hardware/tmp

# Cloning kernel repositories
git clone --depth=1 https://github.com/CuriousNom/android_kernel_samsung_gta4l.git -b 14.0-ksu kernel/samsung/sm6115

# Update KSU Targets
cd kernel/samsung/sm6115
rm -rf KernelSU
git submodule sync
git submodule update --init --recursive
cd KernelSU
git checkout main
git pull
cd ../../../..
