

set -e  # Exit on first error

log() { echo "[$(date)]: $*"; }

log "START - Python Jupyter Project Setup"

# Step 1: Create virtual environment
log "Creating virtual environment (.venv)"
python -m venv .venv

# Step 2: Activate virtual environment
log "Activating virtual environment"
source .venv/Scripts/activate

# Step 3: Upgrade pip and install requirements
log "Upgrading pip"
python -m pip install --upgrade pip


log "Installing requirements"
pip install -r requirements.txt

# Step 4: Add virtual environment to Jupyter
log "Installing Jupyter kernel support"
pip install ipykernel



log "Registering .venv as Jupyter kernel"
python -m ipykernel install --user --name=.venv --display-name "Python (.venv)"

# Step 5: Project folder structure
log "Creating src/utils and initial files"
mkdir -p src/utils
touch src/__init__.py src/main.py

log "SETUP COMPLETE"
