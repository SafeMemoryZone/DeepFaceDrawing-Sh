# DeepFaceDrawing Setup for WSL 2 on Ubuntu

A script to set up DeepFaceDrawing on Ubuntu WSL 2, installing all necessary dependencies.

## Prerequisites

- **WSL 2 Ubuntu**: Tested on Ubuntu 24.04.1 for WSL 2
- **NVIDIA Graphics Card**: Ensure compatibility with CUDA if using GPU acceleration

> **Note:** This script is designed for WSL 2 and may cause issues in other environments. Use a fresh WSL 2 instance or virtual machine to avoid potential conflicts.

## Quickstart

1. **Set Up WSL 2 Environment**
   - Create a new WSL 2 Ubuntu environment to ensure no existing setups interfere.

2. **Run the Installation Script**
   ```bash
   sudo sh install.sh
   ```
   - This will download and install all required dependencies.

3. **Run the Test Script**
   - Execute the test model script to verify the setup:
     ```bash
     python3.8 test_model.py
     ```

4. **Errors**
   - If you encounter a deprecation error, especially related to data types, modify the specified line in the code:
     - Replace instances of `float` with `float64`.

## License

Copyright (c) 2024 Viliam Holly. This project is licensed under the MIT license.
