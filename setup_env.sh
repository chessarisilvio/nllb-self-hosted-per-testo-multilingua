#!/bin/bash
set -e

echo "Setting up NLLB self-hosted environment..."

# Check if python3-venv is installed by trying to import venv in Python
if ! python3 -c "import venv" 2>/dev/null; then
    echo "python3-venv is not installed. Attempting to install..."
    # Update package list and install python3-venv
    sudo apt-get update && sudo apt-get install -y python3-venv
fi

# Create virtual environment in the current directory (venv)
echo "Creating virtual environment in ./venv"
python3 -m venv venv

# Activate the virtual environment and install dependencies
echo "Activating virtual environment and installing dependencies"
source venv/bin/activate
pip install --upgrade pip
pip install torch transformers pillow

# Deactivate
deactivate

# Configure CUDA_VISIBLE_DEVICES for RTX 3050 (GPU 0)
echo "Configuring CUDA_VISIBLE_DEVICES=0 for RTX 3050"
echo "export CUDA_VISIBLE_DEVICES=0" >> venv/bin/activate

echo "Environment setup complete!"
echo "To activate the environment, run: source venv/bin/activate"
echo "The variable CUDA_VISIBLE_DEVICES=0 will be set automatically upon activation."
