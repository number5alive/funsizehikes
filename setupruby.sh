echo '# Install Ruby Gems to ~/gems' >> /home/vagrant/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> /home/vagrant/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> /home/vagrant/.bashrc
source /home/vagrant/.bashrc

echo ' I'm lazy, you have a step left... do the following when you first log in'
echo ' $ gem install bundler'
