##############################################################################
# clone, misctools.
cd ~/projects
git clone git@github.com:iogf/misctools.git misctools-code
##############################################################################
# push, misctools.
cd ~/projects/misctools-code
git status
git add *
git commit -a 
git push 
##############################################################################
# undo, stuff, misctools.
cd ~/projects/misctools-code
git checkout *
##############################################################################
# install, figbox.
cd ~/projects/misctools-code/figbox
sudo bash -i
python setup.py install
rm -fr build
exit
##############################################################################
# install, wice.
cd ~/projects/misctools-code/wice
sudo bash -i
python setup.py install
rm -fr build
exit
##############################################################################
# install, into.
cd ~/code/misctools-code/into
sudo bash -i
python setup.py install
rm -fr build
exit

