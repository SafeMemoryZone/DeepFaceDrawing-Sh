# DeepFaceDrawing-Sh

A script to set up DeepFaceDrawing on Ubuntu WSL 2.

## Prerequisites

- Ubuntu 24.04.1 for WSL 2
- NVIDA graphics card

> This script is designed for WSL 2 and may cause issues in other environments. Use a fresh WSL 2 instance or virtual machine!

## Quickstart

1. Create a new WSL 2 Ubuntu environment.

2. Run the installation script:
```bash
sudo sh install.sh
```

3. Finally, execute the test model script:
```bash
python3.8 test_model.py
```

4. If you encounter a deprecation error related to data types, replace all instances of `float` with `float64`.

## License

Copyright (c) 2024 Viliam Holly. This project is licensed under the MIT license.
