# set environment variables for Vulkan.
export VULKAN_HOME=${HOME}/vulkan.dir/projects/vulkansdk-macos-1.0.69.0
export PATH=${VULKAN_HOME}/macOS/bin:${PATH}
export DYLD_LIBRARY_PATH=${VULKAN_HOME}/macOS/lib:${DYLD_LIBRARY_PATH}
export VK_LAYER_PATH=${VULKAN_HOME}/macOS/etc/vulkan/explicit_layers.d
export VK_ICD_FILENAMES=${VULKAN_HOME}/macOS/etc/vulkan/icd.d/MoltenVK_icd.json
