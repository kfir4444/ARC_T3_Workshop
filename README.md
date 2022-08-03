# ARC_T3_Workshop
ACS fall 2022- ARC and T3 workshop

Here are the files used to automatically install the software for the ACS fall 2022

To install: 

Open a terminal in the relevant location (Code folder) 

`git clone git@github.com:kfir4444/ARC_T3_Workshop.git`

Then:

`bash ARC_T3_Workshop/install_all.sh`

Keep note of the required interaction, for example, the required approvements in the anaconda3 installation.

Make sure that you are installing Anaconda3 under the prefix `"home/(user)/anaconda3"`.

After the installation finished, testing the software is required. Naviage (using the terminal of the Files application) to `RMG-Py` (in terminal: `cd ~/PATH_TO_RMG/RMG-Py`), then, in the terminal, write the following command: `make test`

After the tests are run, repeat the process with ARC: in the terminal `cd ../ARC`, then `make test`
