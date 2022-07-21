# This script should be used when creating a new account for a user on our machines
# after running install_2.sh and manually activating rmg_env

conda activate rmg_env
cd ~/Code/RMG-Py/
make
python -c "import julia; julia.install(); import diffeqpy; diffeqpy.install()"
julia -e 'using Pkg; Pkg.add(PackageSpec(name="ReactionMechanismSimulator",version="0.4")); using ReactionMechanismSimulator;'
make test
conda deactivate

