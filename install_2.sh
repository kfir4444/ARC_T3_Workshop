# after running install_1.sh

source ~/.bashrc

# Install mamba (https://github.com/mamba-org/mamba, https://mamba.readthedocs.io/en/latest/user_guide/mamba.html)
conda install mamba -n base -c conda-forge -y

#install psi4
mamba install -c psi4 psi4
mamba create -n p4env psi4 -c psi4

# Clone repos
cd /home/$USER/Code
git clone https://github.com/ReactionMechanismGenerator/RMG-Py.git
git clone https://github.com/ReactionMechanismGenerator/RMG-database.git
git clone https://github.com/ReactionMechanismGenerator/ARC.git
git clone https://github.com/ReactionMechanismGenerator/T3.git

# Copy dummy script
cp /home/$USER/Code/ARC/ipython/Tools/conformers.ipynb /home/$USER/Code/scripts/conformers.ipynb

# Create envs (and rename remote as official for consistency)
cd RMG-database
git remote rename origin official
cd ../ARC
git remote rename origin official
mamba env create -f environment.yml
cd ../T3
git remote rename origin official
mamba env create -f environment.yml
cd ../RMG-Py
git remote rename origin official
mamba env create -f environment.yml

